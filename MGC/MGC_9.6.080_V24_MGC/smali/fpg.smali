.class public final Lfpg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjr;


# instance fields
.field private final a:Lfmf;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    new-instance v0, Lfmg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lfpg;->a:Lfmf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lfmg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILfjp;)Lflx;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpg;->c(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;

    move-result-object p0

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

    :goto_1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lfjp;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p1, p0, p3}, Lfqg;-><init>(Landroid/graphics/Bitmap;Lfmf;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lfpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance p2, Lfqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {v0, p2, p3, p4}, Lfpa;-><init>(IILfjp;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lfpg;->a:Lfmf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
