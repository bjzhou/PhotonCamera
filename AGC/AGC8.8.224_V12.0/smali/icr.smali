.class public final Licr;
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

    iput-object p1, p0, Licr;->a:Loiw;

    iput-object p2, p0, Licr;->b:Loiw;

    iput-object p3, p0, Licr;->c:Loiw;

    iput-object p4, p0, Licr;->d:Loiw;

    iput-object p5, p0, Licr;->e:Loiw;

    iput-object p6, p0, Licr;->f:Loiw;

    iput-object p7, p0, Licr;->g:Loiw;

    iput-object p8, p0, Licr;->h:Loiw;

    iput-object p9, p0, Licr;->i:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Licr;
    .locals 11

    new-instance v10, Licr;

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

    invoke-direct/range {v0 .. v9}, Licr;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v10
.end method


# virtual methods
.method public final b()Lmbe;
    .locals 14

    iget-object v0, p0, Licr;->a:Loiw;

    check-cast v0, Lelo;

    invoke-virtual {v0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Licr;->b:Loiw;

    check-cast v0, Lerb;

    invoke-virtual {v0}, Lerb;->a()Lbkc;

    move-result-object v3

    iget-object v0, p0, Licr;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lklx;

    iget-object v0, p0, Licr;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lhal;

    iget-object v0, p0, Licr;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgzm;

    iget-object v0, p0, Licr;->f:Loiw;

    check-cast v0, Lcwf;

    invoke-virtual {v0}, Lcwf;->b()Ldja;

    move-result-object v7

    iget-object v0, p0, Licr;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljvs;

    iget-object v0, p0, Licr;->h:Loiw;

    check-cast v0, Lhas;

    invoke-virtual {v0}, Lhas;->a()Lhar;

    move-result-object v9

    iget-object v0, p0, Licr;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ldbx;

    new-instance v0, Lmbe;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lmbe;-><init>(Landroid/app/Activity;Lbkc;Lklx;Lhal;Lgzm;Ldja;Ljvs;Lhar;Ldbx;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Licr;->b()Lmbe;

    move-result-object v0

    return-object v0
.end method
