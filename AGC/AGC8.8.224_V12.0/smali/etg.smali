.class public final synthetic Letg;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field public final synthetic a:Letp;

.field public final synthetic b:Z

.field public final synthetic c:Lklv;

.field public final synthetic d:Z

.field public final synthetic e:Lkbf;

.field public final synthetic f:Lhkh;


# direct methods
.method public synthetic constructor <init>(Letp;ZLhkh;Lklv;ZLkbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Letg;->a:Letp;

    iput-boolean p2, p0, Letg;->b:Z

    iput-object p3, p0, Letg;->f:Lhkh;

    iput-object p4, p0, Letg;->c:Lklv;

    iput-boolean p5, p0, Letg;->d:Z

    iput-object p6, p0, Letg;->e:Lkbf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Letg;->a:Letp;

    iget-boolean v2, v0, Letg;->b:Z

    iget-object v3, v0, Letg;->f:Lhkh;

    iget-object v4, v0, Letg;->c:Lklv;

    iget-boolean v5, v0, Letg;->d:Z

    iget-object v6, v0, Letg;->e:Lkbf;

    move-object/from16 v7, p1

    check-cast v7, Lcjp;

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v1, Letp;->as:Ldfa;

    iget-object v9, v1, Letp;->n:Ldbf;

    invoke-virtual {v9}, Ldbf;->d()Lklv;

    move-result-object v9

    sget-object v10, Lklv;->b:Lklv;

    if-ne v9, v10, :cond_0

    sget-object v9, Lklv;->a:Lklv;

    goto :goto_0

    :cond_0
    sget-object v9, Lklv;->b:Lklv;

    :goto_0
    invoke-virtual {v2, v9, v8, v7}, Ldfa;->a(Lklv;II)V

    :cond_1
    sget-object v2, Lhjw;->a:Lhjw;

    invoke-virtual {v3, v2}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v9, v1, Letp;->Z:Lfbz;

    sget-object v2, Lklv;->b:Lklv;

    if-ne v4, v2, :cond_2

    const/4 v10, 0x3

    goto :goto_1

    :cond_2
    const/4 v10, 0x2

    :goto_1
    if-eqz v5, :cond_3

    const/4 v11, 0x3

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    :goto_2
    iget-wide v12, v3, Lhkh;->m:J

    sget-object v2, Lhjw;->a:Lhjw;

    invoke-virtual {v3, v2}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v14

    invoke-interface/range {v9 .. v15}, Lfbz;->Y(IIJJ)V

    invoke-virtual {v3}, Lhkh;->close()V

    if-nez v5, :cond_6

    iget-object v1, v1, Letp;->p:Licj;

    iget-object v2, v1, Licj;->a:Ljvs;

    iget-object v3, v1, Licj;->b:Lgzi;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgyq;->a:Lgyq;

    if-eq v2, v3, :cond_7

    iget-object v2, v1, Licj;->b:Lgzi;

    const-string v3, "face_retouching_hint"

    invoke-virtual {v2, v3}, Lgzi;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Licj;->a:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgyq;->b:Lgyq;

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Licj;->f:Ljava/lang/String;

    move-object v13, v2

    goto :goto_3

    :cond_5
    iget-object v2, v1, Licj;->g:Ljava/lang/String;

    move-object v13, v2

    :goto_3
    const/4 v9, 0x0

    const/16 v10, 0x1770

    const/4 v11, 0x0

    iget-object v14, v1, Licj;->d:Landroid/content/Context;

    new-instance v12, Lich;

    invoke-direct {v12, v1, v8}, Lich;-><init>(Licj;I)V

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x8

    invoke-static/range {v9 .. v17}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v1, Licj;->k:Licf;

    iget-object v2, v1, Licj;->c:Lell;

    iget-object v3, v1, Licj;->k:Licf;

    invoke-interface {v2, v3}, Lell;->d(Lelk;)Lkad;

    iget-object v2, v1, Licj;->a:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyq;

    iget-object v3, v1, Licj;->m:Lcdi;

    invoke-virtual {v3}, Lcdi;->h()Ljuf;

    move-result-object v3

    iget-object v4, v1, Licj;->a:Ljvs;

    new-instance v5, Lglh;

    const/16 v7, 0xe

    invoke-direct {v5, v1, v2, v7}, Lglh;-><init>(Licj;Lgyq;I)V

    iget-object v1, v1, Licj;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    goto :goto_4

    :cond_6
    iget-object v1, v1, Letp;->p:Licj;

    invoke-virtual {v1}, Licj;->a()V

    :cond_7
    :goto_4
    invoke-interface {v6}, Lkbf;->a()V

    return-void
.end method
