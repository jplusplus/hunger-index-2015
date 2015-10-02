# Project : Global Hunger Index 2015
# -----------------------------------------------------------------------------
# Author : Ricardo Lafuente <ricardo@jplusplus.org>
# -----------------------------------------------------------------------------
# License : GNU General Public License
# -----------------------------------------------------------------------------

install:
	virtualenv .env --no-site-packages --distribute --prompt=\(ghi\)
	. `pwd`/.env/bin/activate; pip install -r requirements.txt

build:
	cd tools; python generate_geojson.py && python render_templates.py
	cd site; gulp

serve:
	cd site; gulp watch

clean:
	rm -fr repos _output

clean-html:
	rm -fr _output


