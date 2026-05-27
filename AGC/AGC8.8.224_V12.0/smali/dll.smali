.class public final Ldll;
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

    iput-object p1, p0, Ldll;->a:Loiw;

    iput-object p2, p0, Ldll;->b:Loiw;

    iput-object p3, p0, Ldll;->c:Loiw;

    iput-object p4, p0, Ldll;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldlk;
    .locals 7

    iget-object v0, p0, Ldll;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    invoke-static {}, Lday;->b()Lnox;

    move-result-object v2

    invoke-static {}, Lday;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {}, Lday;->c()Lj$/time/Clock;

    move-result-object v4

    iget-object v0, p0, Ldll;->b:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, p0, Ldll;->c:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v5

    iget-object v6, p0, Ldll;->d:Loiw;

    new-instance v0, Ldlk;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldlk;-><init>(Lnox;Ljava/util/concurrent/Executor;Lj$/time/Clock;Lkaq;Loiw;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldll;->a()Ldlk;

    move-result-object v0

    return-object v0
.end method
