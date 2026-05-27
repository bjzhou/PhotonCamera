.class public final Lbyf;
.super Ljava/lang/Object;

# interfaces
.implements Lbyg;


# instance fields
.field private final a:Lbsw;

.field private final b:Lbyg;

.field private final c:Lbyg;


# direct methods
.method public constructor <init>(Lbsw;Lbyg;Lbyg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyf;->a:Lbsw;

    iput-object p2, p0, Lbyf;->b:Lbyg;

    iput-object p3, p0, Lbyf;->c:Lbyg;

    return-void
.end method


# virtual methods
.method public final a(Lbsn;Lbqf;)Lbsn;
    .locals 2

    invoke-interface {p1}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lbyf;->b:Lbyg;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lbyf;->a:Lbsw;

    invoke-static {v0, v1}, Lbwy;->g(Landroid/graphics/Bitmap;Lbsw;)Lbwy;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lbyg;->a(Lbsn;Lbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, Lbxv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbyf;->c:Lbyg;

    invoke-interface {v0, p1, p2}, Lbyg;->a(Lbsn;Lbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
