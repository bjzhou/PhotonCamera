.class public final Lbvy;
.super Ljava/lang/Object;

# interfaces
.implements Lbqh;


# instance fields
.field private final a:Lbsw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsx;

    invoke-direct {v0}, Lbsx;-><init>()V

    iput-object v0, p0, Lbvy;->a:Lbsw;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILbqf;)Lbsn;
    .locals 0

    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbvy;->c(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lbqf;)Z
    .locals 0

    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;
    .locals 1

    new-instance v0, Lbvs;

    invoke-direct {v0, p2, p3, p4}, Lbvs;-><init>(IILbqf;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Lbwy;

    iget-object p3, p0, Lbvy;->a:Lbsw;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p3, p4}, Lbwy;-><init>(Landroid/graphics/Bitmap;Lbsw;I)V

    return-object p2
.end method
