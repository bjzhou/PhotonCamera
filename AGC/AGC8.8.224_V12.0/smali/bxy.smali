.class public final Lbxy;
.super Ljava/lang/Object;

# interfaces
.implements Lbqj;


# instance fields
.field private final b:Lbqj;


# direct methods
.method public constructor <init>(Lbqj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbxy;->b:Lbqj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lbxy;->b:Lbqj;

    invoke-interface {v0, p1}, Lbqj;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lbsn;II)Lbsn;
    .locals 5

    invoke-interface {p2}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxv;

    invoke-static {p1}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v1

    iget-object v1, v1, Lbol;->a:Lbsw;

    invoke-virtual {v0}, Lbxv;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lbwy;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Lbwy;-><init>(Landroid/graphics/Bitmap;Lbsw;I)V

    iget-object v1, p0, Lbxy;->b:Lbqj;

    invoke-interface {v1, p1, v3, p3, p4}, Lbqj;->b(Landroid/content/Context;Lbsn;II)Lbsn;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v3}, Lbsn;->e()V

    :cond_0
    invoke-interface {p1}, Lbsn;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lbxy;->b:Lbqj;

    iget-object p4, v0, Lbxv;->a:Lbxu;

    iget-object p4, p4, Lbxu;->a:Lbyb;

    invoke-virtual {p4, p3, p1}, Lbyb;->e(Lbqj;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbxy;

    if-eqz v0, :cond_0

    check-cast p1, Lbxy;

    iget-object v0, p0, Lbxy;->b:Lbqj;

    iget-object p1, p1, Lbxy;->b:Lbqj;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lbxy;->b:Lbqj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
