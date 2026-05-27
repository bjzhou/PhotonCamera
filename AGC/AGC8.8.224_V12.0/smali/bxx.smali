.class public final Lbxx;
.super Lbxp;

# interfaces
.implements Lbsk;


# direct methods
.method public constructor <init>(Lbxv;)V
    .locals 0

    invoke-direct {p0, p1}, Lbxp;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lbxx;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lbxv;

    iget-object v0, v0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v1, v0, Lbyb;->a:Lbpn;

    check-cast v1, Lbpr;

    iget-object v2, v1, Lbpr;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, v1, Lbpr;->c:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v1, v1, Lbpr;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    iget v0, v0, Lbyb;->j:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public final b()Ljava/lang/Class;
    .locals 1

    const-class v0, Lbxv;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lbxx;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lbxv;

    invoke-virtual {v0}, Lbxv;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lbxx;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lbxv;

    invoke-virtual {v0}, Lbxv;->stop()V

    iget-object v0, p0, Lbxx;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lbxv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbxv;->b:Z

    iget-object v0, v0, Lbxv;->a:Lbxu;

    iget-object v0, v0, Lbxu;->a:Lbyb;

    iget-object v2, v0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lbyb;->d()V

    invoke-virtual {v0}, Lbyb;->f()V

    iget-object v2, v0, Lbyb;->e:Lbxz;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v0, Lbyb;->c:Lbpd;

    invoke-virtual {v4, v2}, Lbpd;->f(Lbzz;)V

    iput-object v3, v0, Lbyb;->e:Lbxz;

    :cond_0
    iget-object v2, v0, Lbyb;->g:Lbxz;

    if-eqz v2, :cond_1

    iget-object v4, v0, Lbyb;->c:Lbpd;

    invoke-virtual {v4, v2}, Lbpd;->f(Lbzz;)V

    iput-object v3, v0, Lbyb;->g:Lbxz;

    :cond_1
    iget-object v2, v0, Lbyb;->i:Lbxz;

    if-eqz v2, :cond_2

    iget-object v4, v0, Lbyb;->c:Lbpd;

    invoke-virtual {v4, v2}, Lbpd;->f(Lbzz;)V

    iput-object v3, v0, Lbyb;->i:Lbxz;

    :cond_2
    iget-object v2, v0, Lbyb;->a:Lbpn;

    check-cast v2, Lbpr;

    iput-object v3, v2, Lbpr;->f:Lbpp;

    iget-object v4, v2, Lbpr;->c:[B

    if-eqz v4, :cond_3

    iget-object v5, v2, Lbpr;->j:Ldne;

    invoke-virtual {v5, v4}, Ldne;->x([B)V

    :cond_3
    iget-object v4, v2, Lbpr;->d:[I

    if-eqz v4, :cond_4

    iget-object v5, v2, Lbpr;->j:Ldne;

    iget-object v5, v5, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v5, v4}, Lbsu;->c(Ljava/lang/Object;)V

    :cond_4
    iget-object v4, v2, Lbpr;->g:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v5, v2, Lbpr;->j:Ldne;

    invoke-virtual {v5, v4}, Ldne;->w(Landroid/graphics/Bitmap;)V

    :cond_5
    iput-object v3, v2, Lbpr;->g:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lbpr;->a:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lbpr;->h:Ljava/lang/Boolean;

    iget-object v3, v2, Lbpr;->b:[B

    if-eqz v3, :cond_6

    iget-object v2, v2, Lbpr;->j:Ldne;

    invoke-virtual {v2, v3}, Ldne;->x([B)V

    :cond_6
    iput-boolean v1, v0, Lbyb;->f:Z

    return-void
.end method
