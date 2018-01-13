import { Template } from 'meteor/templating'
import { ReactiveVar } from 'meteor/reactive-var'
import { Session } from 'meteor/session'

import './main.html'


quotes_position = [
  {'symbol': 'AMZN', 'position': 'long', 'size': '4', 'execPrice': '1190'}
  {'symbol': 'SPY', 'position': 'long', 'size': '15', 'execPrice': '268.25'}
  {'symbol': 'T', 'position': 'long', 'size': '130', 'execPrice': '38.045'}
  {'symbol': 'TGT', 'position': 'long', 'size': '76', 'execPrice': '66.125'}
]


quotes_sp500 = [
  {'symbol': 'IPG', 'name': 'Interpublic Group', 'category': 'Consumer Discretionary', 'subCategory': 'Advertising'}
  {'symbol': 'OMC', 'name': 'Omnicom Group', 'category': 'Consumer Discretionary', 'subCategory': 'Advertising'}
  {'symbol': 'ARNC', 'name': 'Arconic Inc', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'BA', 'name': 'Boeing Company', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'GD', 'name': 'General Dynamics', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'LLL', 'name': 'L-3 Communications Holdings', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'LMT', 'name': 'Lockheed Martin Corp.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'NOC', 'name': 'Northrop Grumman Corp.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'RTN', 'name': 'Raytheon Co.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'COL', 'name': 'Rockwell Collins', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'TXT', 'name': 'Textron Inc.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'TDG', 'name': 'TransDigm Group', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'UTX', 'name': 'United Technologies', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'DE', 'name': 'Deere & Co.', 'category': 'Industrials', 'subCategory': 'Agricultural & Farm Machinery'}
  {'symbol': 'ADM', 'name': 'Archer-Daniels-Midland Co', 'category': 'Consumer Staples', 'subCategory': 'Agricultural Products'}
  {'symbol': 'CHRW', 'name': 'C. H. Robinson Worldwide', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'EXPD', 'name': 'Expeditors International', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'FDX', 'name': 'FedEx Corporation', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'UPS', 'name': 'United Parcel Service', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'ALK', 'name': 'Alaska Air Group Inc', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'AAL', 'name': 'American Airlines Group', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'DAL', 'name': 'Delta Air Lines Inc.', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'LUV', 'name': 'Southwest Airlines', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'UAL', 'name': 'United Continental Holdings', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'FL', 'name': 'Foot Locker Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'GPS', 'name': 'Gap Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'LB', 'name': 'L Brands Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'ROST', 'name': 'Ross Stores', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'TJX', 'name': 'TJX Companies Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'HBI', 'name': 'Hanesbrands Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'KORS', 'name': 'Michael Kors Holdings', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'NKE', 'name': 'Nike', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'RL', 'name': 'Polo Ralph Lauren Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'PVH', 'name': 'PVH Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'TPR', 'name': 'Tapestry, Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'TIF', 'name': 'Tiffany & Co.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'UA', 'name': 'Under Armour Class C', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'UAA', 'name': 'Under Armour Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'VFC', 'name': 'V.F. Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'ADBE', 'name': 'Adobe Systems Inc', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ANSS', 'name': 'ANSYS', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ADSK', 'name': 'Autodesk Inc', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'CDNS', 'name': 'Cadence Design Systems', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ORCL', 'name': 'Oracle Corp.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'SYMC', 'name': 'Symantec Corp.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'SNPS', 'name': 'Synopsys Inc.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'AMG', 'name': 'Affiliated Managers Group Inc', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'AMP', 'name': 'Ameriprise Financial', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BK', 'name': 'The Bank of New York Mellon Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BLK', 'name': 'BlackRock', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BEN', 'name': 'Franklin Resources', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'IVZ', 'name': 'Invesco Ltd.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'NTRS', 'name': 'Northern Trust Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'STT', 'name': 'State Street Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'TROW', 'name': 'T. Rowe Price Group', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'APTV', 'name': 'Aptiv Plc', 'category': 'Consumer Discretionary', 'subCategory': 'Auto Parts & Equipment'}
  {'symbol': 'BWA', 'name': 'BorgWarner', 'category': 'Consumer Discretionary', 'subCategory': 'Auto Parts & Equipment'}
  {'symbol': 'F', 'name': 'Ford Motor', 'category': 'Consumer Discretionary', 'subCategory': 'Automobile Manufacturers'}
  {'symbol': 'GM', 'name': 'General Motors', 'category': 'Consumer Discretionary', 'subCategory': 'Automobile Manufacturers'}
  {'symbol': 'AAP', 'name': 'Advance Auto Parts', 'category': 'Consumer Discretionary', 'subCategory': 'Automotive Retail'}
  {'symbol': 'ALXN', 'name': 'Alexion Pharmaceuticals', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'AMGN', 'name': 'Amgen Inc', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'BIIB', 'name': 'Biogen Inc.', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'CELG', 'name': 'Celgene Corp.', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'GILD', 'name': 'Gilead Sciences', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'INCY', 'name': 'Incyte', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'REGN', 'name': 'Regeneron', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'VRTX', 'name': 'Vertex Pharmaceuticals Inc', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'TAP', 'name': 'Molson Coors Brewing Company', 'category': 'Consumer Staples', 'subCategory': 'Brewers'}
  {'symbol': 'CBS', 'name': 'CBS Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Broadcasting'}
  {'symbol': 'ALLE', 'name': 'Allegion', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'AOS', 'name': 'A.O. Smith Corp', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'FAST', 'name': 'Fastenal Co', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'FBHS', 'name': 'Fortune Brands Home & Security', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'JCI', 'name': 'Johnson Controls International', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'MAS', 'name': 'Masco Corp.', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'CHTR', 'name': 'Charter Communications', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'CMCSA', 'name': 'Comcast Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISCA', 'name': 'Discovery Communications-A', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISCK', 'name': 'Discovery Communications-C', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISH', 'name': 'Dish Network', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'SNI', 'name': 'Scripps Networks Interactive Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'TWX', 'name': 'Time Warner Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'VIAB', 'name': 'Viacom Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DIS', 'name': 'The Walt Disney Company', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'MGM', 'name': 'MGM Resorts International', 'category': 'Consumer Discretionary', 'subCategory': 'Casinos & Gaming'}
  {'symbol': 'WYNN', 'name': 'Wynn Resorts Ltd', 'category': 'Consumer Discretionary', 'subCategory': 'Casinos & Gaming'}
  {'symbol': 'CSCO', 'name': 'Cisco Systems', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'FFIV', 'name': 'F5 Networks', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'HRS', 'name': 'Harris Corporation', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'JNPR', 'name': 'Juniper Networks', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'MSI', 'name': 'Motorola Solutions Inc.', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'BBY', 'name': 'Best Buy Co. Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Computer & Electronics Retail'}
  {'symbol': 'FLR', 'name': 'Fluor Corp.', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'JEC', 'name': 'Jacobs Engineering Group', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'PWR', 'name': 'Quanta Services Inc.', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'CAT', 'name': 'Caterpillar Inc.', 'category': 'Industrials', 'subCategory': 'Construction Machinery & Heavy Trucks'}
  {'symbol': 'PCAR', 'name': 'PACCAR Inc.', 'category': 'Industrials', 'subCategory': 'Construction Machinery & Heavy Trucks'}
  {'symbol': 'MLM', 'name': 'Martin Marietta Materials', 'category': 'Materials', 'subCategory': 'Construction Materials'}
  {'symbol': 'VMC', 'name': 'Vulcan Materials', 'category': 'Materials', 'subCategory': 'Construction Materials'}
  {'symbol': 'GRMN', 'name': 'Garmin Ltd.', 'category': 'Consumer Discretionary', 'subCategory': 'Consumer Electronics'}
  {'symbol': 'AXP', 'name': 'American Express Co', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'HRB', 'name': 'Block H&R', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'COF', 'name': 'Capital One Financial', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'DFS', 'name': 'Discover Financial Services', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'NAVI', 'name': 'Navient', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'SYF', 'name': 'Synchrony Financial', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'FCX', 'name': 'Freeport-McMoRan Inc.', 'category': 'Materials', 'subCategory': 'Copper'}
  {'symbol': 'ADS', 'name': 'Alliance Data Systems', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'GPN', 'name': 'Global Payments Inc', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'PYPL', 'name': 'PayPal', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'M', 'name': 'Macy\'s Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Department Stores'}
  {'symbol': 'JWN', 'name': 'Nordstrom', 'category': 'Consumer Discretionary', 'subCategory': 'Department Stores'}
  {'symbol': 'BF.B', 'name': 'Brown-Forman Corp.', 'category': 'Consumer Staples', 'subCategory': 'Distillers & Vintners'}
  {'symbol': 'STZ', 'name': 'Constellation Brands', 'category': 'Consumer Staples', 'subCategory': 'Distillers & Vintners'}
  {'symbol': 'LKQ', 'name': 'LKQ Corporation', 'category': 'Consumer Discretionary', 'subCategory': 'Distributors'}
  {'symbol': 'BAC', 'name': 'Bank of America Corp', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'C', 'name': 'Citigroup Inc.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'CMA', 'name': 'Comerica Inc.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'JPM', 'name': 'JPMorgan Chase & Co.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'USB', 'name': 'U.S. Bancorp', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'WFC', 'name': 'Wells Fargo', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'DWDP', 'name': 'DowDuPont', 'category': 'Materials', 'subCategory': 'Diversified Chemicals'}
  {'symbol': 'EMN', 'name': 'Eastman Chemical', 'category': 'Materials', 'subCategory': 'Diversified Chemicals'}
  {'symbol': 'CTAS', 'name': 'Cintas Corporation', 'category': 'Industrials', 'subCategory': 'Diversified Support Services'}
  {'symbol': 'CVS', 'name': 'CVS Health', 'category': 'Consumer Staples', 'subCategory': 'Drug Retail'}
  {'symbol': 'WBA', 'name': 'Walgreens Boots Alliance', 'category': 'Consumer Staples', 'subCategory': 'Drug Retail'}
  {'symbol': 'LNT', 'name': 'Alliant Energy Corp', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'AEP', 'name': 'American Electric Power', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'ED', 'name': 'Consolidated Edison', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'D', 'name': 'Dominion Energy', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'DUK', 'name': 'Duke Energy', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'EIX', 'name': 'Edison Int\'l', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'ETR', 'name': 'Entergy Corp.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'FE', 'name': 'FirstEnergy Corp', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'PPL', 'name': 'PPL Corp.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'PEG', 'name': 'Public Serv. Enterprise Inc.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'SO', 'name': 'Southern Co.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'WEC', 'name': 'Wec Energy Group Inc', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'AYI', 'name': 'Acuity Brands Inc', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'AME', 'name': 'AMETEK Inc', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'ETN', 'name': 'Eaton Corporation', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'EMR', 'name': 'Emerson Electric Company', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'ROK', 'name': 'Rockwell Automation Inc.', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'APH', 'name': 'Amphenol Corp', 'category': 'Information Technology', 'subCategory': 'Electronic Components'}
  {'symbol': 'GLW', 'name': 'Corning Inc.', 'category': 'Information Technology', 'subCategory': 'Electronic Components'}
  {'symbol': 'FLIR', 'name': 'FLIR Systems', 'category': 'Information Technology', 'subCategory': 'Electronic Equipment & Instruments'}
  {'symbol': 'TEL', 'name': 'TE Connectivity Ltd.', 'category': 'Information Technology', 'subCategory': 'Electronic Manufacturing Services'}
  {'symbol': 'RSG', 'name': 'Republic Services Inc', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'SRCL', 'name': 'Stericycle Inc', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'WM', 'name': 'Waste Management Inc.', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'CF', 'name': 'CF Industries Holdings Inc', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'FMC', 'name': 'FMC Corporation', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'MON', 'name': 'Monsanto Co.', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'MOS', 'name': 'The Mosaic Company', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'CBOE', 'name': 'CBOE Holdings', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'CME', 'name': 'CME Group Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'ICE', 'name': 'Intercontinental Exchange', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'MCO', 'name': 'Moody\'s Corp', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'NDAQ', 'name': 'Nasdaq, Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'SPGI', 'name': 'S&P Global, Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'SYY', 'name': 'Sysco Corp.', 'category': 'Consumer Staples', 'subCategory': 'Food Distributors'}
  {'symbol': 'KR', 'name': 'Kroger Co.', 'category': 'Consumer Staples', 'subCategory': 'Food Retail'}
  {'symbol': 'DG', 'name': 'Dollar General', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'DLTR', 'name': 'Dollar Tree', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'KSS', 'name': 'Kohl\'s Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'TGT', 'name': 'Target Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'NEM', 'name': 'Newmont Mining Corporation', 'category': 'Materials', 'subCategory': 'Gold'}
  {'symbol': 'ABC', 'name': 'AmerisourceBergen Corp', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'BMY', 'name': 'Bristol-Myers Squibb', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'CAH', 'name': 'Cardinal Health Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'ESRX', 'name': 'Express Scripts', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'HSIC', 'name': 'Henry Schein', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'MCK', 'name': 'McKesson Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'WAT', 'name': 'Waters Corporation', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'ABT', 'name': 'Abbott Laboratories', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'A', 'name': 'Agilent Technologies Inc', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BCR', 'name': 'Bard (C.R.) Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BAX', 'name': 'Baxter International Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BDX', 'name': 'Becton Dickinson', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BSX', 'name': 'Boston Scientific', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'DHR', 'name': 'Danaher Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'EW', 'name': 'Edwards Lifesciences', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'HOLX', 'name': 'Hologic', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'IDXX', 'name': 'IDEXX Laboratories', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'ISRG', 'name': 'Intuitive Surgical Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'JNJ', 'name': 'Johnson & Johnson', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'MDT', 'name': 'Medtronic plc', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'PKI', 'name': 'PerkinElmer', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'RMD', 'name': 'ResMed', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'SYK', 'name': 'Stryker Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'TMO', 'name': 'Thermo Fisher Scientific', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'VAR', 'name': 'Varian Medical Systems', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'ZBH', 'name': 'Zimmer Biomet Holdings', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'DVA', 'name': 'DaVita Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'HCA', 'name': 'HCA Holdings', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'UHS', 'name': 'Universal Health Services, Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'HCP', 'name': 'HCP Inc.', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'VTR', 'name': 'Ventas Inc', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'HCN', 'name': 'Welltower Inc.', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'EVHC', 'name': 'Envision Healthcare', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'LH', 'name': 'Laboratory Corp. of America Holding', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'DGX', 'name': 'Quest Diagnostics', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'ALGN', 'name': 'Align Technology', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'COO', 'name': 'The Cooper Companies', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'XRAY', 'name': 'Dentsply Sirona', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'PDCO', 'name': 'Patterson Companies', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'CERN', 'name': 'Cerner', 'category': 'Health Care', 'subCategory': 'Health Care Technology'}
  {'symbol': 'ATVI', 'name': 'Activision Blizzard', 'category': 'Information Technology', 'subCategory': 'Home Entertainment Software'}
  {'symbol': 'EA', 'name': 'Electronic Arts', 'category': 'Information Technology', 'subCategory': 'Home Entertainment Software'}
  {'symbol': 'LEG', 'name': 'Leggett & Platt', 'category': 'Consumer Discretionary', 'subCategory': 'Home Furnishings'}
  {'symbol': 'MHK', 'name': 'Mohawk Industries', 'category': 'Consumer Discretionary', 'subCategory': 'Home Furnishings'}
  {'symbol': 'HD', 'name': 'Home Depot', 'category': 'Consumer Discretionary', 'subCategory': 'Home Improvement Retail'}
  {'symbol': 'LOW', 'name': 'Lowe\'s Cos.', 'category': 'Consumer Discretionary', 'subCategory': 'Home Improvement Retail'}
  {'symbol': 'DHI', 'name': 'D. R. Horton', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'LEN', 'name': 'Lennar Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'PHM', 'name': 'Pulte Homes Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'HST', 'name': 'Host Hotels & Resorts', 'category': 'Real Estate', 'subCategory': 'Hotel & Resort REITs'}
  {'symbol': 'CCL', 'name': 'Carnival Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'HLT', 'name': 'Hilton Worldwide Holdings Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'MAR', 'name': 'Marriott Int\'l.', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'NCLH', 'name': 'Norwegian Cruise Line', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'RCL', 'name': 'Royal Caribbean Cruises Ltd', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'WYN', 'name': 'Wyndham Worldwide', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'SNA', 'name': 'Snap-On Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'SWK', 'name': 'Stanley Black & Decker', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'WHR', 'name': 'Whirlpool Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'CHD', 'name': 'Church & Dwight', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'CLX', 'name': 'The Clorox Company', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'CL', 'name': 'Colgate-Palmolive', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'KMB', 'name': 'Kimberly-Clark', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'NWL', 'name': 'Newell Brands', 'category': 'Consumer Discretionary', 'subCategory': 'Housewares & Specialties'}
  {'symbol': 'RHI', 'name': 'Robert Half International', 'category': 'Industrials', 'subCategory': 'Human Resource & Employment Services'}
  {'symbol': 'COST', 'name': 'Costco Wholesale Corp.', 'category': 'Consumer Staples', 'subCategory': 'Hypermarkets & Super Centers'}
  {'symbol': 'WMT', 'name': 'Wal-Mart Stores', 'category': 'Consumer Staples', 'subCategory': 'Hypermarkets & Super Centers'}
  {'symbol': 'AES', 'name': 'AES Corp', 'category': 'Utilities', 'subCategory': 'Independent Power Producers & Energy Traders'}
  {'symbol': 'NRG', 'name': 'NRG Energy', 'category': 'Utilities', 'subCategory': 'Independent Power Producers & Energy Traders'}
  {'symbol': 'MMM', 'name': '3M Company', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'GE', 'name': 'General Electric', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'HON', 'name': 'Honeywell Int\'l Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'ROP', 'name': 'Roper Technologies', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'APD', 'name': 'Air Products & Chemicals Inc', 'category': 'Materials', 'subCategory': 'Industrial Gases'}
  {'symbol': 'PX', 'name': 'Praxair Inc.', 'category': 'Materials', 'subCategory': 'Industrial Gases'}
  {'symbol': 'CMI', 'name': 'Cummins Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'DOV', 'name': 'Dover Corp.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'FLS', 'name': 'Flowserve Corporation', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'FTV', 'name': 'Fortive Corp', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'GWW', 'name': 'Grainger (W.W.) Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'ITW', 'name': 'Illinois Tool Works', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'IR', 'name': 'Ingersoll-Rand PLC', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'PH', 'name': 'Parker-Hannifin', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'PNR', 'name': 'Pentair Ltd.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'XYL', 'name': 'Xylem Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'DRE', 'name': 'Duke Realty Corp', 'category': 'Real Estate', 'subCategory': 'Industrial REITs'}
  {'symbol': 'PLD', 'name': 'Prologis', 'category': 'Real Estate', 'subCategory': 'Industrial REITs'}
  {'symbol': 'AON', 'name': 'Aon plc', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'AJG', 'name': 'Arthur J. Gallagher & Co.', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'MMC', 'name': 'Marsh & McLennan', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'WLTW', 'name': 'Willis Towers Watson', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'CVX', 'name': 'Chevron Corp.', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  {'symbol': 'XOM', 'name': 'Exxon Mobil Corp.', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  {'symbol': 'HES', 'name': 'Hess Corporation', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  {'symbol': 'T', 'name': 'AT&T Inc', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  {'symbol': 'CTL', 'name': 'CenturyLink Inc', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  {'symbol': 'VZ', 'name': 'Verizon Communications', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  {'symbol': 'AMZN', 'name': 'Amazon.com Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'EXPE', 'name': 'Expedia Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'PCLN', 'name': 'Priceline.com Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'TRIP', 'name': 'TripAdvisor', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'AKAM', 'name': 'Akamai Technologies Inc', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'GOOGL', 'name': 'Alphabet Inc Class A', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'GOOG', 'name': 'Alphabet Inc Class C', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'ADP', 'name': 'Automatic Data Processing', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'CTXS', 'name': 'Citrix Systems', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'EBAY', 'name': 'eBay Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FB', 'name': 'Facebook, Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FIS', 'name': 'Fidelity National Information Services', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FISV', 'name': 'Fiserv Inc', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'INTU', 'name': 'Intuit Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'MA', 'name': 'Mastercard Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'NTAP', 'name': 'NetApp', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'NFLX', 'name': 'Netflix Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'PAYX', 'name': 'Paychex Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'CRM', 'name': 'Salesforce.com', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'TSS', 'name': 'Total System Services', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'VRSN', 'name': 'Verisign Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'V', 'name': 'Visa Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'WU', 'name': 'Western Union Co', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'SCHW', 'name': 'Charles Schwab Corporation', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'ETFC', 'name': 'E*Trade', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'GS', 'name': 'Goldman Sachs Group', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'MS', 'name': 'Morgan Stanley', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'RJF', 'name': 'Raymond James Financial Inc.', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'ACN', 'name': 'Accenture plc', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'CTSH', 'name': 'Cognizant Technology Solutions', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'CSRA', 'name': 'CSRA Inc.', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'DXC', 'name': 'DXC Technology', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'IT', 'name': 'Gartner Inc', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'IBM', 'name': 'International Business Machines', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'HAS', 'name': 'Hasbro Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Leisure Products'}
  {'symbol': 'MAT', 'name': 'Mattel Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Leisure Products'}
  {'symbol': 'AFL', 'name': 'AFLAC Inc', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'BHF', 'name': 'Brighthouse Financial Inc', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'MET', 'name': 'MetLife Inc.', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'PFG', 'name': 'Principal Financial Group', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'PRU', 'name': 'Prudential Financial', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'TMK', 'name': 'Torchmark Corp.', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'UNM', 'name': 'Unum Group', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'IQV', 'name': 'IQVIA Holdings Inc.', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Service'}
  {'symbol': 'ILMN', 'name': 'Illumina Inc', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Services'}
  {'symbol': 'MTD', 'name': 'Mettler Toledo', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Services'}
  {'symbol': 'AET', 'name': 'Aetna Inc', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'ANTM', 'name': 'Anthem Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'CNC', 'name': 'Centene Corporation', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'CI', 'name': 'CIGNA Corp.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'HUM', 'name': 'Humana Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'UNH', 'name': 'United Health Group Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'BLL', 'name': 'Ball Corp', 'category': 'Materials', 'subCategory': 'Metal & Glass Containers'}
  {'symbol': 'HOG', 'name': 'Harley-Davidson', 'category': 'Consumer Discretionary', 'subCategory': 'Motorcycle Manufacturers'}
  {'symbol': 'AIZ', 'name': 'Assurant Inc', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  {'symbol': 'LNC', 'name': 'Lincoln National', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  {'symbol': 'L', 'name': 'Loews Corp.', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  {'symbol': 'BRK.B', 'name': 'Berkshire Hathaway', 'category': 'Financials', 'subCategory': 'Multi-Sector Holdings'}
  {'symbol': 'LUK', 'name': 'Leucadia National Corp.', 'category': 'Financials', 'subCategory': 'Multi-Sector Holdings'}
  {'symbol': 'AEE', 'name': 'Ameren Corp', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'CNP', 'name': 'CenterPoint Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'CMS', 'name': 'CMS Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'DTE', 'name': 'DTE Energy Co.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'ES', 'name': 'Eversource Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'EXC', 'name': 'Exelon Corp.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'NEE', 'name': 'NextEra Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'NI', 'name': 'NiSource Inc.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'PCG', 'name': 'PG&E Corp.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'PNW', 'name': 'Pinnacle West Capital', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'SCG', 'name': 'SCANA Corp', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'SRE', 'name': 'Sempra Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'XEL', 'name': 'Xcel Energy Inc', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'ARE', 'name': 'Alexandria Real Estate Equities Inc', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'BXP', 'name': 'Boston Properties', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'SLG', 'name': 'SL Green Realty', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'VNO', 'name': 'Vornado Realty Trust', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'HP', 'name': 'Helmerich & Payne', 'category': 'Energy', 'subCategory': 'Oil & Gas Drilling'}
  {'symbol': 'BHGE', 'name': 'Baker Hughes, a GE Company', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'HAL', 'name': 'Halliburton Co.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'NOV', 'name': 'National Oilwell Varco Inc.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'SLB', 'name': 'Schlumberger Ltd.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'FTI', 'name': 'TechnipFMC', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'APC', 'name': 'Anadarko Petroleum Corp', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'APA', 'name': 'Apache Corporation', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'COG', 'name': 'Cabot Oil & Gas', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'CHK', 'name': 'Chesapeake Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'XEC', 'name': 'Cimarex Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'CXO', 'name': 'Concho Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'COP', 'name': 'ConocoPhillips', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'DVN', 'name': 'Devon Energy Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'EOG', 'name': 'EOG Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'EQT', 'name': 'EQT Corporation', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'MRO', 'name': 'Marathon Oil Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'NFX', 'name': 'Newfield Exploration Co', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'NBL', 'name': 'Noble Energy Inc', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'OXY', 'name': 'Occidental Petroleum', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'PXD', 'name': 'Pioneer Natural Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'RRC', 'name': 'Range Resources Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'ANDV', 'name': 'Andeavor', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'MPC', 'name': 'Marathon Petroleum', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'PSX', 'name': 'Phillips 66', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'VLO', 'name': 'Valero Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'KMI', 'name': 'Kinder Morgan', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'OKE', 'name': 'ONEOK', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'WMB', 'name': 'Williams Cos.', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'CPB', 'name': 'Campbell Soup', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'CAG', 'name': 'Conagra Brands', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'GIS', 'name': 'General Mills', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'HSY', 'name': 'The Hershey Company', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'HRL', 'name': 'Hormel Foods Corp.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'SJM', 'name': 'JM Smucker', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'K', 'name': 'Kellogg Co.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'KHC', 'name': 'Kraft Heinz Co', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'MKC', 'name': 'McCormick & Co.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'MDLZ', 'name': 'Mondelez International', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'TSN', 'name': 'Tyson Foods', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'AVY', 'name': 'Avery Dennison Corp', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'IP', 'name': 'International Paper', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'PKG', 'name': 'Packaging Corporation of America', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'SEE', 'name': 'Sealed Air', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'WRK', 'name': 'WestRock Company', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'COTY', 'name': 'Coty, Inc', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'EL', 'name': 'Estee Lauder Cos.', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'PG', 'name': 'Procter & Gamble', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'ABBV', 'name': 'AbbVie Inc.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'AGN', 'name': 'Allergan, Plc', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'LLY', 'name': 'Lilly (Eli) & Co.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'MRK', 'name': 'Merck & Co.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'MYL', 'name': 'Mylan N.V.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'PRGO', 'name': 'Perrigo', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'PFE', 'name': 'Pfizer Inc.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'ZTS', 'name': 'Zoetis', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'ALL', 'name': 'Allstate Corp', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'AIG', 'name': 'American International Group, Inc.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'CB', 'name': 'Chubb Limited', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'CINF', 'name': 'Cincinnati Financial', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'HIG', 'name': 'Hartford Financial Svc.Gp.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'PGR', 'name': 'Progressive Corp.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'TRV', 'name': 'The Travelers Companies Inc.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'XL', 'name': 'XL Capital', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'NWSA', 'name': 'News Corp. Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'NWS', 'name': 'News Corp. Class B', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'FOXA', 'name': 'Twenty-First Century Fox Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'FOX', 'name': 'Twenty-First Century Fox Class B', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'CSX', 'name': 'CSX Corp.', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'KSU', 'name': 'Kansas City Southern', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'NSC', 'name': 'Norfolk Southern Corp.', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'UNP', 'name': 'Union Pacific', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'CBG', 'name': 'CBRE Group', 'category': 'Real Estate', 'subCategory': 'Real Estate Services'}
  {'symbol': 'BBT', 'name': 'BB&T Corporation', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'CFG', 'name': 'Citizens Financial Group', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'FITB', 'name': 'Fifth Third Bancorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'HBAN', 'name': 'Huntington Bancshares', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'KEY', 'name': 'KeyCorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'MTB', 'name': 'M&T Bank Corp.', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'PNC', 'name': 'PNC Financial Services', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'RF', 'name': 'Regions Financial Corp.', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'STI', 'name': 'SunTrust Banks', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'ZION', 'name': 'Zions Bancorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'RE', 'name': 'Everest Re Group Ltd.', 'category': 'Financials', 'subCategory': 'Reinsurance'}
  {'symbol': 'EFX', 'name': 'Equifax Inc.', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'INFO', 'name': 'IHS Markit Ltd.', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'NLSN', 'name': 'Nielsen Holdings', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'VRSK', 'name': 'Verisk Analytics', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'AIV', 'name': 'Apartment Investment & Management', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'AVB', 'name': 'AvalonBay Communities, Inc.', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'EQR', 'name': 'Equity Residential', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'ESS', 'name': 'Essex Property Trust, Inc.', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'MAA', 'name': 'Mid-America Apartments', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'UDR', 'name': 'UDR Inc', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'CMG', 'name': 'Chipotle Mexican Grill', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'DRI', 'name': 'Darden Restaurants', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'MCD', 'name': 'McDonald\'s Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'SBUX', 'name': 'Starbucks Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'YUM', 'name': 'Yum! Brands Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'FRT', 'name': 'Federal Realty Investment Trust', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'GGP', 'name': 'General Growth Properties Inc.', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'KIM', 'name': 'Kimco Realty', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'MAC', 'name': 'Macerich', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'O', 'name': 'Realty Income Corporation', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'REG', 'name': 'Regency Centers Corporation', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'SPG', 'name': 'Simon Property Group Inc', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'AMAT', 'name': 'Applied Materials Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'KLAC', 'name': 'KLA-Tencor Corp.', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'LRCX', 'name': 'Lam Research', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'AMD', 'name': 'Advanced Micro Devices Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'ADI', 'name': 'Analog Devices, Inc.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'AVGO', 'name': 'Broadcom', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'INTC', 'name': 'Intel Corp.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'MCHP', 'name': 'Microchip Technology', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'MU', 'name': 'Micron Technology', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'NVDA', 'name': 'Nvidia Corporation', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'QRVO', 'name': 'Qorvo', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'QCOM', 'name': 'QUALCOMM Inc.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'SWKS', 'name': 'Skyworks Solutions', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'TXN', 'name': 'Texas Instruments', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'XLNX', 'name': 'Xilinx Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'KO', 'name': 'Coca-Cola Company (The)', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'DPS', 'name': 'Dr Pepper Snapple Group', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'MNST', 'name': 'Monster Beverage', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'PEP', 'name': 'PepsiCo Inc.', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'AMT', 'name': 'American Tower Corp A', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'CCI', 'name': 'Crown Castle International Corp.', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'DLR', 'name': 'Digital Realty Trust Inc', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'EQIX', 'name': 'Equinix', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'EXR', 'name': 'Extra Space Storage', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'IRM', 'name': 'Iron Mountain Incorporated', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'PSA', 'name': 'Public Storage', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'SBAC', 'name': 'SBA Communications', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'WY', 'name': 'Weyerhaeuser Corp.', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'ALB', 'name': 'Albemarle Corp', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'ECL', 'name': 'Ecolab Inc.', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'IFF', 'name': 'Intl Flavors & Fragrances', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'LYB', 'name': 'LyondellBasell', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'PPG', 'name': 'PPG Industries', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'SHW', 'name': 'Sherwin-Williams', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'AZO', 'name': 'AutoZone Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'KMX', 'name': 'Carmax Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'GPC', 'name': 'Genuine Parts', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'ORLY', 'name': 'O\'Reilly Automotive', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'SIG', 'name': 'Signet Jewelers', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'TSCO', 'name': 'Tractor Supply Company', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'ULTA', 'name': 'Ulta Salon Cosmetics & Fragrance Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'NUE', 'name': 'Nucor Corp.', 'category': 'Materials', 'subCategory': 'Steel'}
  {'symbol': 'CA', 'name': 'CA, Inc.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'MSFT', 'name': 'Microsoft Corp.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'RHT', 'name': 'Red Hat Inc.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'AAPL', 'name': 'Apple Inc.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'HPE', 'name': 'Hewlett Packard Enterprise', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'HPQ', 'name': 'HP Inc.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'STX', 'name': 'Seagate Technology', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'WDC', 'name': 'Western Digital', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'XRX', 'name': 'Xerox Corp.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'PBCT', 'name': 'People\'s United Financial', 'category': 'Financials', 'subCategory': 'Thrifts & Mortgage Finance'}
  {'symbol': 'GT', 'name': 'Goodyear Tire & Rubber', 'category': 'Consumer Discretionary', 'subCategory': 'Tires & Rubber'}
  {'symbol': 'MO', 'name': 'Altria Group Inc', 'category': 'Consumer Staples', 'subCategory': 'Tobacco'}
  {'symbol': 'PM', 'name': 'Philip Morris International', 'category': 'Consumer Staples', 'subCategory': 'Tobacco'}
  {'symbol': 'URI', 'name': 'United Rentals, Inc.', 'category': 'Industrials', 'subCategory': 'Trading Companies & Distributors'}
  {'symbol': 'JBHT', 'name': 'J. B. Hunt Transport Services', 'category': 'Industrials', 'subCategory': 'Trucking'}
  {'symbol': 'AWK', 'name': 'American Water Works Company Inc', 'category': 'Utilities', 'subCategory': 'Water Utilities'}
]

Meteor.call 'trainML'


# Run Open position quotes
quotes_position.forEach (quote) ->
  console.log quote
  # Meteor.call 'getAlphavantageData', quote.symbol, 'TIME_SERIES_MONTHLY_ADJUSTED', (error, result) ->
  #   Session.set(quote.symbol, result.data) 

  Meteor.call 'getIEXDataStats', quote.symbol, 'price', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol+"_price", result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'stats', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol, result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'company', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol+"_company", result.data)

# Run SP500 quotes
quotes_sp500.forEach (quote) ->
  console.log quote
  # Meteor.call 'getAlphavantageData', quote.symbol, 'TIME_SERIES_MONTHLY_ADJUSTED', (error, result) ->
  #   Session.set(quote.symbol, result.data) 

  Meteor.call 'getIEXDataStats', quote.symbol, 'price', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol+"_price", result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'stats', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol, result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'company', (error, result) ->
    console.log "quote.symbol: " + quote.symbol
    console.log result.data
    Session.set(quote.symbol+"_company", result.data)






  # Meteor.call 'getTickerData', quote, 'close_price', (error, result) ->
  #   Session.set(quote+"_"+"close_price", result.data)
  # Meteor.call 'getTickerData', quote, 'dividendyield', (error, result) ->
  #   Session.set(quote+"_"+"dividendyield", result.data)



# Meteor.call 'getGradedData', 'https://api.intrinio.com', (error, result) ->
#   console.log result

Meteor.call 'createPlayer'

# Meteor.call 'getTickerData', 'AAPL', 'close_price', (error, result) ->
#   console.log result
#   Session.set("AAPL"+"_"+"close_price", result.data)

# Meteor.call 'getTickerData', 'AAPL', 'dividendyield', (error, result) ->
#   console.log result
#   Session.set("AAPL"+"_"+"dividendyield", result.data)

# Meteor.call 'getTickerData', 'MSFT', 'close_price', (error, result) ->
#   console.log result
#   Session.set("MSFT", result.data)



# Meteor.call 'getTicker', "AAPL", (error, result) ->
#   console.log "getTicker result:"
#   console.log result


getMe = (quote, ticker_tag) ->
    console.log calling "get Meeeeeeee"
    if ticker_tag is "close_price"
      console.log "getting close_price"
      Meteor.call 'getTickerData', 'https://api.intrinio.com', (error, result) ->
        console.log result
        Session.set(quote, result.data)
      return 169.3
    if ticker_tag is "dividendyield"
      console.log "getting dividendyield"
      return 0.5
    return 0

# ---
# generated by js2coffee 2.2.0


# ---
# generated by js2coffee 2.2.0


Template.body.helpers tasks: [
  { text: 'This is task 1' }
  { text: 'This is task 2' }
  { text: 'This is task 3' }
]

# Template.dashboard.helpers: ->
#   Session.get 'enemy'

# Session.set 'enemy', 'Eastasia'
# # Page will say "We've always been at war with Eastasia"
# Session.set 'enemy', 'Eurasia'
# # Page will change to say "We've always been at war with Eurasia"


# ---
# generated by js2coffee 2.2.0


# Template.myTemplate.helpers myHelper: (index) ->
#   myArray = [
#     'foo'
#     'bar'
#   ]
#   myArray[index]

# # ---
# # generated by js2coffee 2.2.0

# global_portfolioValue = 0

Template.dashboard.helpers portfolioValue: ->

  # Run open position quotes
  value = 0
  quotes_position.forEach (quote) ->

    price_current = parseFloat Session.get(quote.symbol+"_price")
    exec_price = parseFloat quote.execPrice
    size = parseFloat quote.size
    value = (value + price_current * size)

  Session.set("portfolioValue", value.toFixed(2))
  value.toFixed(2)

Template.dashboard.helpers portfolioCost: ->
  # Run open position quotes
  cost = 0
  quotes_position.forEach (quote) ->

    price_current = parseFloat Session.get(quote.symbol+"_price")
    exec_price = parseFloat quote.execPrice
    size = parseFloat quote.size
    cost = cost + exec_price * size
  Session.set("portfolioCost", cost) 
  cost

Template.dashboard.helpers portfolioDelta: ->
  value = Session.get("portfolioValue")
  cost = Session.get("portfolioCost")
  delta = (value - cost).toFixed(2)
  Session.set("portfolioDelta", delta) 
  delta

Template.dashboard.helpers portfolioDeltaPercent: ->
  value = Session.get("portfolioValue")
  cost = Session.get("portfolioCost")
  deltaPercent = (100*(value - cost)/cost).toFixed(2)
  Session.set("portfolioDelta", deltaPercent) 
  deltaPercent

Template.dashboard.helpers tickers: (index) -> 

  quotes_table_arr = []


  # Run open position quotes
  quotes_position.forEach (quote) ->

    try
      price_current = parseFloat Session.get(quote.symbol+"_price")
      price_day50 = parseFloat Session.get(quote.symbol).day50MovingAvg
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      date = "Today"
      roe = parseFloat Session.get(quote.symbol).returnOnEquity
      sector = Session.get(quote.symbol+"_company").sector
      industry = Session.get(quote.symbol+"_company").industry
      company_name = Session.get(quote.symbol+"_company").companyName
      exec_price = parseFloat quote.execPrice
      size = parseFloat quote.size
      yieldPercent = (100 * (price_current-exec_price)/price_current).toFixed(2)
      yieldGain = ((price_current-exec_price) * size ).toFixed(2)

    catch err
      console.log "Error: " + err
      price_current = "-"
      price_day50 = "-"
      dividend = "-"
      date = "-"
      roe = "-"
      sector = "-"
      industry = "-"
      company_name = "-"
      yieldPercent = "-"
      yieldGain = "-"


    quote_table_row = {ticker: { "symbol":quote.symbol, "name":company_name, "category":sector, "subCategory":industry, "date": date, "currentPrice": price_current, "price_day50": price_day50, "dividend": dividend, "roe": roe, "position": quote.position, "size": quote.size, "execPrice": quote.execPrice, "yieldPercent": yieldPercent, "yieldGain": yieldGain}}
    quotes_table_arr.push(quote_table_row)      


  # Run SP500 quotes
  quotes_sp500.forEach (quote) ->
    # quote_table_row = {ticker: { "name":quote, "price":Session.get(quote+"_close_price").value, "dividend":100*parseFloat(Session.get(quote+"_dividendyield").value)}}
    # quotes_table_arr.push(quote_table_row)    

    try
      price_current = parseFloat Session.get(quote.symbol+"_price")
      price_day50 = parseFloat Session.get(quote.symbol).day50MovingAvg
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      date = "Today"
      roe = Session.get(quote.symbol).returnOnEquity
      sector = Session.get(quote.symbol+"_company").sector
      industry = Session.get(quote.symbol+"_company").industry
      company_name = Session.get(quote.symbol+"_company").companyName

      # price = Object.values(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]["4. close"]
      # dividend = Object.values(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]["7. dividend amount"]
      # date = Object.keys(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]
    catch err
      console.log "Error: " + err
      price_current = "-"
      price_day50 = "-"
      dividend = "-"
      date = "-"
      roe = "-"
      sector = "-"
      industry = "-"
      company_name = "-"


    # price = 123
    # dividend = 456

    quote_table_row = {ticker: { "symbol":quote.symbol, "name":company_name, "category":sector, "subCategory":industry, "date": date, "currentPrice": price_current, "price_day50": price_day50, "dividend": dividend, "roe": roe}}
    quotes_table_arr.push(quote_table_row)    
    # quote_table_row = {ticker: { "name":quote, "price":123, "dividend":123}}
  

    # console.log "xxxxx:" + quote
    # Session.get("AAPL")["Meta Data"]["2. Symbol"]
  return quotes_table_arr

  # quotes = [
  # 'AAPL'
  # 'MSFT'
  # 'IBM'
  # 'FB'
  # ]

  # return [
  # # {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
  # {ticker: { "name":"AAPL", "price":123, "dividend":456}}
  # {ticker: { "name":"IBM", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # ]


# Template.dashboard.helpers tickers: (index) ->
#   tickers_arr = [
#     {ticker: { "name":"AAPL", "price":123, "dividend":456}}
#     {ticker: { "name":"AAPL", "price":789, "dividend":999}}
#   ]
#   tickers_arr[index]

# Template.dashboard.helpers tickers: [
#   # {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   ]

  # { "name":"AT&T", "price":getMe("AAPL", "close_price"), "dividend":123 }
  # { "name":"AT&T", "price":30, "dividend":123 }
  # { 'name':'AAPL', 'price':getTickerData('AAPL', 'close_price'), 'dividend': getTickerData('AAPL', 'dividendyield')}

# Template.dashboard.events 'input #ticker_searchbox': (event) ->
#   console.log( "Handler for .keypress() called." )
#   alert 'you hit enter'
#   console.log event
#   if event.which is 13
#     console.log "enterrrrrrrr"
#     alert "hahahaha"
#   return

Template.body.events 'keypress #ticker_searchbox': (event) ->
  # Prevent default browser form submit
  # alert "hahahaha"
  console.log event.which
  if event.which is 13
    # alert "hahahaha"
    symbol = $('#ticker_searchbox').val()
    # window.open("https://www.w3schools.com");
    win = window.open("https://finance.yahoo.com/quote/"+symbol, "_blank", "height=600,width=900")
    # win.focus()
  return

Template.body.events 'click #ticker_table_header': (event) ->
  # Prevent default browser form submit
  # alert "hahahaha"
  # alert "hahahaha"
  $('#ticker_table').trigger("update");
  return

# ---
# generated by js2coffee 2.2.0


# $('#someTextBox').keypress (event) ->
#   console.log "clicccccccccccked"
#   # keycode = if event.keyCode then event.keyCode else event.which
#   # if keycode == '13'
#   #   alert 'You pressed a "enter" key in textbox'
#   # #Stop the event from propogation to other handlers
#   # #If this line will be removed, then keypress event handler attached
#   # #at document level will also be triggered
#   event.stopPropagation()
#   return

# ---
# generated by js2coffee 2.2.0


# ---
# generated by js2coffee 2.2.0

# ---
# generated by js2coffee 2.2.0

# $('#ticker_searchbox').keypress (event) ->
#   console.log( "Handler for .keypress() called." )

# ---
# generated by js2coffee 2.2.0

$(document).ready ->
  $('#ticker_table').tablesorter()
  console.log "ticker table ready sortableeeeeeeeeeee"
  return

# ---
# generated by js2coffee 2.2.0

Template.hello.onCreated ->
  # counter starts at 0
  @counter = new ReactiveVar(0)
  return
Template.hello.helpers counter: ->
  Template.instance().counter.get()
Template.hello.events 'click button': (event, instance) ->
  # increment the counter when button is clicked
  console.log "client: hello world"
  instance.counter.set instance.counter.get() + 1
  return



# ---
# generated by js2coffee 2.2.0