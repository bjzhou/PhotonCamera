.class public final Ldqh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqh;->a:Loiw;

    iput-object p2, p0, Ldqh;->b:Loiw;

    iput-object p3, p0, Ldqh;->c:Loiw;

    iput-object p4, p0, Ldqh;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Ldqh;
    .locals 1

    new-instance v0, Ldqh;

    invoke-direct {v0, p0, p1, p2, p3}, Ldqh;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ldqg;
    .locals 10

    invoke-static {}, Ldnf;->c()Lfwx;

    move-result-object v1

    iget-object v0, p0, Ldqh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ldqh;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbkc;

    iget-object v0, p0, Ldqh;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldhi;

    iget-object v0, p0, Ldqh;->d:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v5

    new-instance v9, Ldqg;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ldqg;-><init>(Lfwx;Ljava/util/concurrent/Executor;Lbkc;Ldhi;Lkaq;[B[B[B)V

    return-object v9
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldqh;->a()Ldqg;

    move-result-object v0

    return-object v0
.end method
