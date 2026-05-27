.class public final Lggu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggu;->a:Loiw;

    iput-object p2, p0, Lggu;->b:Loiw;

    iput-object p3, p0, Lggu;->c:Loiw;

    iput-object p4, p0, Lggu;->d:Loiw;

    iput-object p5, p0, Lggu;->e:Loiw;

    iput-object p6, p0, Lggu;->f:Loiw;

    iput-object p7, p0, Lggu;->g:Loiw;

    iput-object p8, p0, Lggu;->h:Loiw;

    iput-object p9, p0, Lggu;->i:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lggu;
    .locals 11

    new-instance v10, Lggu;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lggu;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v10
.end method


# virtual methods
.method public final a()Lggt;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lggu;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lken;

    iget-object v1, v0, Lggu;->b:Loiw;

    check-cast v1, Lftw;

    invoke-virtual {v1}, Lftw;->b()Ljuw;

    move-result-object v4

    iget-object v1, v0, Lggu;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lccg;

    iget-object v1, v0, Lggu;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ldqx;

    iget-object v1, v0, Lggu;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lbkb;

    iget-object v1, v0, Lggu;->f:Loiw;

    check-cast v1, Lcce;

    invoke-virtual {v1}, Lcce;->b()Ldfa;

    move-result-object v8

    iget-object v1, v0, Lggu;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lgla;

    iget-object v1, v0, Lggu;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljvk;

    iget-object v1, v0, Lggu;->i:Loiw;

    check-cast v1, Lgca;

    invoke-virtual {v1}, Lgca;->a()Ljvs;

    move-result-object v11

    new-instance v1, Lggt;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lggt;-><init>(Lken;Ljuw;Lccg;Ldqx;Lbkb;Ldfa;Lgla;Ljvk;Ljvs;[B[B[B[B[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lggu;->a()Lggt;

    move-result-object v0

    return-object v0
.end method
