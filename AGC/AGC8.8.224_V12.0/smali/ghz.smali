.class public final Lghz;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghz;->a:Loiw;

    iput-object p2, p0, Lghz;->b:Loiw;

    iput-object p3, p0, Lghz;->c:Loiw;

    iput-object p4, p0, Lghz;->d:Loiw;

    iput-object p5, p0, Lghz;->e:Loiw;

    iput-object p6, p0, Lghz;->f:Loiw;

    iput-object p7, p0, Lghz;->g:Loiw;

    iput-object p8, p0, Lghz;->h:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lghz;
    .locals 10

    new-instance v9, Lghz;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lghz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method


# virtual methods
.method public final b()Lhdk;
    .locals 11

    iget-object v0, p0, Lghz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lken;

    iget-object v0, p0, Lghz;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkgq;

    iget-object v0, p0, Lghz;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkfj;

    iget-object v0, p0, Lghz;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfyz;

    iget-object v0, p0, Lghz;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lggm;

    iget-object v0, p0, Lghz;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkbc;

    iget-object v0, p0, Lghz;->g:Loiw;

    check-cast v0, Lgim;

    invoke-virtual {v0}, Lgim;->b()Lhdk;

    move-result-object v8

    iget-object v0, p0, Lghz;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lghx;

    new-instance v0, Lhdk;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lhdk;-><init>(Lken;Lkgq;Lkfj;Lfyz;Lggm;Lkbc;Lhdk;Lghx;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lghz;->b()Lhdk;

    move-result-object v0

    return-object v0
.end method
