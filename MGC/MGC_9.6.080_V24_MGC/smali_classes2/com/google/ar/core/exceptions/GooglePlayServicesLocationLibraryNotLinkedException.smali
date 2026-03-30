.class public Lcom/google/ar/core/exceptions/GooglePlayServicesLocationLibraryNotLinkedException;
.super Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/GooglePlayServicesLocationLibraryNotLinkedException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "The Google Fused Location Provider for Android classes must be linked into the app\'s binary when calling Session.configure() with Geospatial mode enabled (Config.GeospatialMode.ENABLED). "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
