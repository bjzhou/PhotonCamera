.class public final Ldpo;
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

    iput-object p1, p0, Ldpo;->a:Loiw;

    iput-object p2, p0, Ldpo;->b:Loiw;

    iput-object p3, p0, Ldpo;->c:Loiw;

    iput-object p4, p0, Ldpo;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Ldpo;
    .locals 1

    new-instance v0, Ldpo;

    invoke-direct {v0, p0, p1, p2, p3}, Ldpo;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ldpn;
    .locals 7

    iget-object v0, p0, Ldpo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkog;

    invoke-static {}, Ldnf;->c()Lfwx;

    move-result-object v3

    iget-object v0, p0, Ldpo;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ldpo;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Ldpo;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldhi;

    new-instance v0, Ldpn;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldpn;-><init>(Lkog;Lfwx;Ljava/util/concurrent/Executor;ILdhi;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldpo;->a()Ldpn;

    move-result-object v0

    return-object v0
.end method
