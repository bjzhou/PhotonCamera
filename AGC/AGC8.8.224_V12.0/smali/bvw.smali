.class public final Lbvw;
.super Ljava/lang/Object;

# interfaces
.implements Lbqi;


# instance fields
.field private final a:Lbsw;

.field private final b:Lbqi;


# direct methods
.method public constructor <init>(Lbsw;Lbqi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvw;->a:Lbsw;

    iput-object p2, p0, Lbvw;->b:Lbqi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lbqf;)Z
    .locals 4

    check-cast p1, Lbsn;

    iget-object v0, p0, Lbvw;->b:Lbqi;

    new-instance v1, Lbwy;

    invoke-interface {p1}, Lbsn;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lbvw;->a:Lbsw;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lbwy;-><init>(Landroid/graphics/Bitmap;Lbsw;I)V

    invoke-interface {v0, v1, p2, p3}, Lbqi;->a(Ljava/lang/Object;Ljava/io/File;Lbqf;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
