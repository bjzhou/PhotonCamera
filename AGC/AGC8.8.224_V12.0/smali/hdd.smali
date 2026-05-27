.class public final Lhdd;
.super Ljava/lang/Object;

# interfaces
.implements Lhec;


# instance fields
.field final synthetic a:Lhec;

.field final synthetic b:Lhdf;


# direct methods
.method public constructor <init>(Lhdf;Lhec;)V
    .locals 0

    iput-object p1, p0, Lhdd;->b:Lhdf;

    iput-object p2, p0, Lhdd;->a:Lhec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lhdd;->a:Lhec;

    check-cast v0, Lhdh;

    iget-object v1, v0, Lhdh;->c:Lhdi;

    iget-object v1, v1, Lhdi;->d:Lell;

    iget-object v2, v0, Lhdh;->b:Lhdy;

    invoke-interface {v1, v2}, Lell;->h(Ljava/lang/Object;)V

    iget-object v1, v0, Lhdh;->c:Lhdi;

    iget-object v1, v1, Lhdi;->e:Ljava/util/Map;

    iget-object v0, v0, Lhdh;->b:Lhdy;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lheb;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lhdd;->b:Lhdf;

    iget-boolean v1, v1, Lhdf;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lhdd;->a:Lhec;

    new-instance v15, Lhcr;

    check-cast v1, Lhdh;

    iget-object v3, v1, Lhdh;->a:Lhdz;

    iget-object v4, v1, Lhdh;->b:Lhdy;

    iget-object v14, v1, Lhdh;->c:Lhdi;

    iget-object v6, v14, Lhdi;->a:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v14, Lhdi;->g:Lfbz;

    iget-object v8, v14, Lhdi;->j:Ljew;

    iget-object v9, v14, Lhdi;->c:Lgft;

    iget-object v10, v14, Lhdi;->i:Ldja;

    iget-object v11, v14, Lhdi;->k:Ligo;

    iget-boolean v12, v14, Lhdi;->h:Z

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v15

    move-object/from16 v5, p1

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v21, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v2 .. v17}, Lhcr;-><init>(Lhdz;Lhdy;Lheb;Lcom/google/android/apps/camera/smarts/SmartsChipView;Lfbz;Ljew;Lgft;Ldja;Ligo;Z[B[B[B[B[B)V

    move-object/from16 v2, v20

    iget-object v2, v2, Lhdi;->d:Lell;

    move-object/from16 v3, v21

    invoke-interface {v2, v3}, Lell;->d(Lelk;)Lkad;

    iget-object v2, v1, Lhdh;->c:Lhdi;

    iget-object v2, v2, Lhdi;->e:Ljava/util/Map;

    iget-object v1, v1, Lhdh;->b:Lhdy;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(Lheb;)V
    .locals 4

    iget-object v0, p0, Lhdd;->b:Lhdf;

    iget-boolean v0, v0, Lhdf;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdd;->a:Lhec;

    check-cast v0, Lhdh;

    iget-object v1, v0, Lhdh;->c:Lhdi;

    iget-object v1, v1, Lhdi;->e:Ljava/util/Map;

    iget-object v2, v0, Lhdh;->b:Lhdy;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdu;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhdh;->c:Lhdi;

    iget-object v0, v0, Lhdi;->f:Ljuh;

    new-instance v2, Lhdg;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lhdg;-><init>(Lhdu;Lheb;I)V

    invoke-virtual {v0, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
