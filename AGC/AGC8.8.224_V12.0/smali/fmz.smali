.class final Lfmz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lfng;


# direct methods
.method public constructor <init>(Lfng;Lnph;)V
    .locals 0

    iput-object p1, p0, Lfmz;->b:Lfng;

    iput-object p2, p0, Lfmz;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lfmz;->b:Lfng;

    iget-object v0, v0, Lfng;->q:Lewz;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, v0, Lewz;->m:Z

    iget-object v2, v0, Lewz;->c:Lexe;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v2, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexd;

    iget-object v4, v4, Lexd;->i:Lltf;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lltf;->e()V

    :cond_0
    iget-object v4, v2, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexd;

    iget-object v4, v4, Lexd;->j:Lltf;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lltf;->e()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    iget-object v2, v2, Lexe;->i:Lexc;

    invoke-virtual {v2}, Lexc;->b()V

    :cond_3
    iget v2, v0, Lewz;->p:I

    iget v3, v0, Lewz;->o:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v2, v0, Lewz;->b:Lexc;

    iget-object v3, v2, Lexc;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    iget-object v2, v2, Lexc;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltf;

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lltf;->e()V

    :cond_5
    iget-object v2, v0, Lewz;->H:Lewj;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lewj;->d()V

    :cond_6
    iget-object v2, v0, Lewz;->I:Lewj;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lewj;->d()V

    :cond_7
    iget-object v2, v0, Lewz;->i:Lexv;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lewj;->d()V

    :cond_8
    iget-object v2, v0, Lewz;->j:Lewk;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lewj;->d()V

    :cond_9
    iget-object v2, v0, Lewz;->k:Lext;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lewj;->d()V

    :cond_a
    iget-object v2, v0, Lewz;->a:Lewh;

    if-eqz v2, :cond_b

    check-cast v2, Lexa;

    iget-object v2, v2, Lexa;->f:Lewk;

    invoke-virtual {v2}, Lewj;->d()V

    :cond_b
    iget-object v2, v0, Lewz;->h:Lexg;

    if-eqz v2, :cond_e

    :goto_2
    iget-object v3, v2, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    iget-object v3, v2, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lewl;

    invoke-virtual {v3}, Lewl;->e()V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    iget-object v1, v2, Lexg;->d:Lext;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lewj;->d()V

    :cond_e
    iget-object v1, v0, Lewz;->f:Lewg;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lewl;->e()V

    :cond_f
    iget-object v1, v0, Lewz;->g:Lewg;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lewz;->f:Lewg;

    invoke-virtual {v1}, Lewl;->e()V

    :cond_10
    iget-object v1, v0, Lewz;->d:Lexi;

    iget-object v2, v1, Lexi;->g:Lexu;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lewj;->d()V

    :cond_11
    iget-object v2, v1, Lexi;->h:Lext;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lewj;->d()V

    :cond_12
    iget-object v2, v1, Lexi;->e:Lewl;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lewl;->e()V

    :cond_13
    iget-object v1, v1, Lexi;->f:Lewl;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lewl;->e()V

    :cond_14
    iget-object v0, v0, Lewz;->b:Lexc;

    invoke-virtual {v0}, Lexc;->b()V

    iget-object v0, p0, Lfmz;->b:Lfng;

    iput-object v4, v0, Lfng;->q:Lewz;

    iget-object v0, p0, Lfmz;->a:Lnph;

    invoke-virtual {v0, v4}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method
