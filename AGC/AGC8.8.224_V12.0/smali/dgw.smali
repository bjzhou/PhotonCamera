.class public final Ldgw;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldhl;Ldhi;Ldin;)V
    .locals 5

    sget-object v0, Ldho;->bn:Ldhj;

    move-object v1, p0

    check-cast v1, Ldit;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->br:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->bu:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->d:Ldhk;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldho;->bw:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->bS:Ldhj;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhh;->g:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhf;->b:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->N:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->X:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->af:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->ar:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->R:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->Q:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->Y:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->e:Ldhj;

    sget-object v4, Ldin;->a:Ldin;

    invoke-virtual {p2, v4}, Ldin;->b(Ldin;)Z

    move-result p2

    invoke-virtual {v1, v0, p2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->a:Ldhk;

    sget-object v0, Ldhp;->a:Ldhp;

    invoke-virtual {v0}, Ldhp;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldhq;->at:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->b:Ldhk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldhq;->L:Ldhj;

    invoke-virtual {v1, p2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldib;->F:Ldhj;

    invoke-virtual {v1, p2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldht;->j:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldht;->i:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhu;->d:Ldhj;

    const v0, 0x4bd1a308    # 2.747752E7f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object p2, Ldhu;->e:Ldhj;

    const v0, 0x4c3c7d59    # 4.9411428E7f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object p2, Ldhv;->g:Ldhj;

    invoke-virtual {v1, p2, v3}, Ldit;->s(Ldhj;Z)V

    sget-object p2, Ldhv;->r:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhv;->k:Ldhj;

    invoke-virtual {v1, p2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->S:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->O:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->t:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->u:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->v:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhy;->b:Ldhk;

    sget-object v0, Ldhy;->c:Ldhk;

    invoke-interface {p1, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p0, Ldib;->o:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->p:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->B:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->x:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->s:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->J:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->K:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->L:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->u:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldgz;->c:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldim;->a:Ldhj;

    invoke-virtual {v1, p0, v3}, Ldit;->u(Ldhj;Z)V

    const/4 p0, 0x3

    sput p0, Llby;->a:I

    return-void
.end method

.method public static b(Ldhl;Ldhi;Lkog;Ldin;Lhbm;)V
    .locals 7

    sget-object v0, Ldgs;->e:Ldhj;

    const v1, 0x4b49dd0d    # 1.3229325E7f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgs;->f:Ldhj;

    const v1, 0x4c114100    # 3.807744E7f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->bn:Ldhj;

    move-object v1, p0

    check-cast v1, Ldit;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->X:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->br:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->bu:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->n:Ldhk;

    const/16 v3, 0x578

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldho;->bI:Ldhj;

    const v3, 0x3fca5404

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->aW:Ldhj;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->aD:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->s(Ldhj;Z)V

    sget-object v0, Ldho;->as:Ldhj;

    invoke-virtual {p2}, Lkog;->b()Z

    move-result v4

    invoke-virtual {v1, v0, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->at:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhs;->c:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->bW:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->az:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->bP:Ldhj;

    sget-object v4, Ldin;->b:Ldin;

    invoke-virtual {p3, v4}, Ldin;->a(Ldin;)Z

    move-result v4

    invoke-virtual {v1, v0, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->d:Ldhk;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldho;->bw:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->ap:Ldhj;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->an:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    if-eq v2, v4, :cond_0

    const v4, 0x3f2ba227

    goto :goto_0

    :cond_0
    const v4, 0x3f0e6b51

    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->aq:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    const/high16 v5, 0x41000000    # 8.0f

    if-eq v2, v4, :cond_1

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x41f00000    # 30.0f

    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->al:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, 0x41200000    # 10.0f

    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    iget-boolean v0, p2, Lkog;->l:Z

    sget-object v4, Ldho;->ak:Ldhj;

    invoke-virtual {v1, v4, v0}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->a:Ldhk;

    iget-boolean v4, p2, Lkog;->l:Z

    if-eq v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v4, 0xa

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldho;->bk:Ldhj;

    const-string v4, "3840x2736"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldho;->bX:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    invoke-virtual {v1, v0, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhh;->g:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhh;->h:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhf;->b:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhf;->c:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhf;->d:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhb;->c:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->ah:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->T:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->R:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->N:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->V:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->W:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->X:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->Z:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->aa:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->ac:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->ai:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->B:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41a00000    # 20.0f

    if-nez v4, :cond_5

    iget-boolean v4, p2, Lkog;->k:Z

    if-eqz v4, :cond_4

    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_4
    const/high16 v4, 0x40e00000    # 7.0f

    goto :goto_4

    :cond_5
    const/high16 v4, 0x41a00000    # 20.0f

    :goto_4
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->C:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    if-nez v4, :cond_7

    iget-boolean v4, p2, Lkog;->k:Z

    if-eqz v4, :cond_6

    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_5

    :cond_6
    const/high16 v4, 0x40e00000    # 7.0f

    goto :goto_5

    :cond_7
    const/high16 v4, 0x41a00000    # 20.0f

    :goto_5
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->D:Ldhj;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->A:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    if-nez v4, :cond_9

    iget-boolean v4, p2, Lkog;->k:Z

    if-eqz v4, :cond_8

    const/high16 v5, 0x41a00000    # 20.0f

    goto :goto_6

    :cond_8
    goto :goto_6

    :cond_9
    const/high16 v5, 0x41a00000    # 20.0f

    :goto_6
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->z:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->Y:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->al:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->aj:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->ad:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->L:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldgz;->c:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->a:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->b:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->e:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->d:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->f:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->g:Ldhj;

    const-string v4, "deeprestore_face_float32_512x512_v7_1-graph-custom_op.tflite.uncompressed"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldih;->e:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldih;->f:Ldhj;

    const-string v4, "siamese_fe_darwinn_custom_op_janeiro_a0.tflite.uncompressed"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldih;->g:Ldhj;

    const-string v4, "siamese_end2end_darwinn_custom_op_janeiro_a0.tflite.uncompressed"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldhg;->d:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->j:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->n:Ldhj;

    iget-boolean v4, p2, Lkog;->l:Z

    invoke-virtual {v1, v0, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->Z:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhq;->V:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhu;->i:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->e:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->f:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->g:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->i:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhx;->j:Ldhj;

    const-string v4, "motion-custom_op-janeiro.tflite.enc"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldhx;->k:Ldhj;

    const-string v4, "saliency-custom_op-janeiro.tflite.enc"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldhx;->l:Ldhj;

    const-string v4, "scene_classification-custom_op-janeiro.tflite.enc"

    invoke-interface {p0, v0, v4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldhh;->i:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    invoke-virtual {p4}, Lhbm;->b()Z

    move-result p4

    sget-object v0, Ldhv;->g:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->s(Ldhj;Z)V

    sget-object v0, Ldhv;->r:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhv;->k:Ldhj;

    invoke-virtual {v1, v0, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhv;->v:Ldhj;

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldhv;->u:Ldhj;

    invoke-virtual {v1, v0, p4}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhv;->C:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->s:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->S:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->O:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->T:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->t:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->Q:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->j:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->l:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->v:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->R:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->m:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->g:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->h:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->e:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->f:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhw;->H:Ldhj;

    invoke-virtual {v1, p4, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p4, Ldhy;->b:Ldhk;

    sget-object v0, Ldhy;->c:Ldhk;

    invoke-interface {p1, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p4, p1}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldhy;->a:Ldhk;

    const/16 p4, 0x12c

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldhy;->k:Ldhj;

    invoke-virtual {v1, p1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldhy;->l:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldgt;->b:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->y:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->x:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->G:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->H:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->b:Ldhk;

    const/16 p4, 0x7e0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->c:Ldhk;

    const/16 p4, 0x5e4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->d:Ldhk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->f:Ldhj;

    const p4, 0x3fc2339c    # 1.5172f

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldib;->O:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->M:Ldhj;

    const p4, 0x40f33333    # 7.6f

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p0, p1, p4}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldib;->r:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->s:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->z:Ldhj;

    iget-boolean p4, p2, Lkog;->l:Z

    invoke-virtual {v1, p1, p4}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->u:Ldhj;

    invoke-virtual {v1, p1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->v:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->w:Ldhj;

    const-string p4, "P22"

    invoke-interface {p0, p1, p4}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object p1, Ldho;->ag:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldho;->ai:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldho;->aj:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldho;->ah:Ldhj;

    iget-boolean p4, p2, Lkog;->l:Z

    invoke-virtual {v1, p1, p4}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldij;->a:Ldhk;

    sget-object p1, Ldin;->c:Ldin;

    invoke-virtual {p3, p1}, Ldin;->b(Ldin;)Z

    sget-object p1, Ldhc;->j:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldho;->cc:Ldhj;

    iget-boolean p4, p2, Lkog;->l:Z

    invoke-virtual {v1, p1, p4}, Ldit;->u(Ldhj;Z)V

    iget-boolean p1, p2, Lkog;->l:Z

    if-eqz p1, :cond_a

    sget-object p1, Ldin;->b:Ldin;

    invoke-virtual {p3, p1}, Ldin;->b(Ldin;)Z

    :cond_a
    sget-object p1, Ldhq;->O:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldhq;->P:Ldhj;

    const-string p2, "lancet_hdrp42_2x_516x263_1u8_1u8-p22.tflite.uncompressed"

    invoke-interface {p0, p1, p2}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget-object p1, Ldhq;->av:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldhq;->aw:Ldhj;

    const-string p2, "pecan-p22-custom_op.tflite.uncompressed"

    invoke-interface {p0, p1, p2}, Ldhl;->o(Ldhj;Ljava/lang/String;)V

    sget p0, Ldha;->a:I

    return-void
.end method

.method public static c(Ldhl;Ldhi;Lkog;Ldin;)V
    .locals 5

    sget-object v0, Ldgs;->e:Ldhj;

    const v1, 0x4b49dd0d    # 1.3229325E7f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgs;->f:Ldhj;

    const v1, 0x4c114100    # 3.807744E7f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldho;->av:Ldhj;

    const-string v1, "Pixel-2H19-Droidfood-Discuss@google.com"

    invoke-interface {p0, v0, v1}, Ldhl;->p(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldho;->aw:Ldhj;

    const-string v1, "Pixel-2H19-Dogfood-Discuss@google.com"

    invoke-interface {p0, v0, v1}, Ldhl;->p(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldho;->bn:Ldhj;

    move-object v1, p0

    check-cast v1, Ldit;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, Ldho;->X:Ldhj;

    iget-boolean p2, p2, Lkog;->d:Z

    invoke-virtual {v1, v0, p2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->br:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->bu:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->n:Ldhk;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldho;->r:Ldhk;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldho;->az:Ldhj;

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->as:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->cb:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->s(Ldhj;Z)V

    sget-object p2, Ldho;->an:Ldhj;

    const v3, 0x3f1d70a4    # 0.615f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p0, p2, v3}, Ldhl;->n(Ldhj;Ljava/lang/Float;)V

    sget-object p2, Ldho;->d:Ldhk;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, p2, v3}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldho;->bw:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldho;->bS:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhh;->g:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhh;->h:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhf;->b:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->T:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->R:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->N:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->V:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->W:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->X:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->Z:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->aa:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldgu;->af:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhx;->e:Ldhj;

    sget-object v4, Ldin;->a:Ldin;

    invoke-virtual {p3, v4}, Ldin;->b(Ldin;)Z

    move-result p3

    invoke-virtual {v1, p2, p3}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhy;->j:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->y:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->au:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->at:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhq;->b:Ldhk;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p2, Ldhq;->aD:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldht;->j:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldht;->i:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhg;->m:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhv;->g:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->s(Ldhj;Z)V

    sget-object p2, Ldhv;->r:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhv;->k:Ldhj;

    invoke-virtual {v1, p2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->S:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->O:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->t:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhw;->k:Ldhj;

    invoke-virtual {v1, p2, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p2, Ldhy;->b:Ldhk;

    sget-object p3, Ldhy;->c:Ldhk;

    invoke-interface {p1, p3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldhy;->a:Ldhk;

    const/16 p2, 0x1f4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->y:Ldhj;

    invoke-virtual {v1, p1, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->x:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->G:Ldhj;

    invoke-virtual {v1, p1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p1, Ldib;->b:Ldhk;

    const/16 p2, 0x918

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->c:Ldhk;

    const/16 p2, 0x6d2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldib;->d:Ldhk;

    invoke-interface {p0, p1, v3}, Ldhl;->m(Ldhk;Ljava/lang/Integer;)V

    sget-object p0, Ldib;->J:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->K:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->L:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldib;->u:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldil;->h:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldho;->ag:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldho;->aj:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldho;->am:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldim;->a:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldgz;->c:Ldhj;

    invoke-virtual {v1, p0, v2}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldhr;->b:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldif;->a:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldhc;->j:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldhh;->d:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldho;->ci:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldhq;->H:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    sget-object p0, Ldhq;->I:Ldhj;

    invoke-virtual {v1, p0, v0}, Ldit;->u(Ldhj;Z)V

    return-void
.end method

.method public static d(Lfjq;)Landroid/util/Pair;
    .locals 4

    new-instance v0, Limk;

    invoke-direct {v0}, Limk;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [F

    iget-object p0, p0, Lfjq;->a:[F

    invoke-static {p0, v0}, Linb;->u([FLimk;)V

    invoke-virtual {v0, v1}, Limk;->b([F)V

    const/4 p0, 0x5

    aget p0, v1, p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float p0, v2

    const/4 v0, 0x4

    aget v0, v1, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    const/4 v0, 0x6

    aget v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    double-to-float v1, v2

    if-lez v0, :cond_0

    neg-float p0, p0

    neg-float v1, v1

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static f(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method
