module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
      # search for arxiv and doi fields
      arxiv_regex = /^(.*)\barxiv\b *= *\{(.*?)\}/
      doi_regex = /^(.*)\bdoi\b *= *\{.*?$\n/
      # if doi is not present but arxiv field is, change arxiv to doi
	    if !(input =~ doi_regex) and input =~ arxiv_regex
        input = input.gsub(arxiv_regex) { |match|
          $1 + 'doi = {10.48550/arXiv.' + $2 + '}'
        }
	    end

	    keywords = @context.registers[:site].config['filtered_bibtex_keywords']
	    keywords.each do |keyword|
	    	input = input.gsub(/^.*\b#{keyword}\b *= *\{.*$\n/, '')
	    end
	    
	    return input
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
