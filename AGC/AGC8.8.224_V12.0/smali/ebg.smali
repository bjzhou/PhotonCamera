.class public final Lebg;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebg;->a:Loiw;

    iput-object p2, p0, Lebg;->b:Loiw;

    iput-object p3, p0, Lebg;->c:Loiw;

    iput-object p4, p0, Lebg;->d:Loiw;

    iput-object p5, p0, Lebg;->e:Loiw;

    iput-object p6, p0, Lebg;->f:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lebg;
    .locals 8

    new-instance v7, Lebg;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lebg;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v7
.end method


# virtual methods
.method public final b()Ldqx;
    .locals 8

    iget-object v0, p0, Lebg;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljuf;

    iget-object v0, p0, Lebg;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lecd;

    iget-object v0, p0, Lebg;->c:Loiw;

    check-cast v0, Lelt;

    invoke-virtual {v0}, Lelt;->a()Ljvs;

    move-result-object v4

    iget-object v0, p0, Lebg;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljwb;

    iget-object v0, p0, Lebg;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lebl;

    iget-object v0, p0, Lebg;->f:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v7

    new-instance v0, Ldqx;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldqx;-><init>(Ljuf;Lecd;Ljvs;Ljwb;Lebl;Lkaq;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lebg;->b()Ldqx;

    move-result-object v0

    return-object v0
.end method
