import requests as re
import pandas as pd
from dicttoxml import dicttoxml

class Data:
    def __init__():
        self.baseurl = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/"
        self.esearch = "esearch.fcgi"
        self.db = "protein"
        self.retmax = 100
        self.species = []
        self.glands = []
        self.data = pd.DataFrame.empty

    def set_retmax(r)
        self.retmax = r

    def search_protein(silk, gland):
        query = silk.replace(" ", "+") + "+ AND + " + gland.replace("+")
        link = self.baseurk + self.esearch
        params = {"db": db, "term": query, "retmax" = retmax}
        request = re.get(link, params=params)
        print(request.text)
        