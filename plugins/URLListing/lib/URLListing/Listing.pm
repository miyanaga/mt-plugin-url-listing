package URLListing::Listing;

use strict;
use warnings;

sub properties {
    my $props = {
        permalink_url => {
            label        => 'Full URL',
            display      => 'default',
            order        => 220,
            col_class    => 'string primary',
            html         => sub {
                my ( $prop, $obj, $app ) = @_;
                my $url = $obj->permalink;
                qq{<input class="text full" readonly="readonly" type="text" onclick="this.select();" value="$url" />};
            },
        },
        permalink_path => {
            label        => 'URL Path',
            display      => 'default',
            order        => 230,
            col_class    => 'string primary',
            html         => sub {
                my ( $prop, $obj, $app ) = @_;
                my $url = $obj->permalink;
                my $path = $url;
                $path =~ s!^https?://([^/]+)!!;
                qq{<input class="text full" readonly="readonly" type="text" onclick="this.select();" value="$path" />};
            },
        },
    };

    {
        entry   => $props,
        page    => $props,
    };
}

1;
