.class public final Ldlc;
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

    iput-object p1, p0, Ldlc;->a:Loiw;

    iput-object p2, p0, Ldlc;->b:Loiw;

    iput-object p3, p0, Ldlc;->c:Loiw;

    iput-object p4, p0, Ldlc;->d:Loiw;

    iput-object p5, p0, Ldlc;->e:Loiw;

    iput-object p6, p0, Ldlc;->f:Loiw;

    iput-object p7, p0, Ldlc;->g:Loiw;

    iput-object p8, p0, Ldlc;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldlb;
    .locals 9

    iget-object v0, p0, Ldlc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    iget-object v0, p0, Ldlc;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljuh;

    iget-object v0, p0, Ldlc;->c:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v3

    iget-object v0, p0, Ldlc;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkbc;

    invoke-static {}, Lday;->c()Lj$/time/Clock;

    move-result-object v5

    iget-object v0, p0, Ldlc;->e:Loiw;

    check-cast v0, Ldlf;

    invoke-virtual {v0}, Ldlf;->a()Lj$/time/Duration;

    move-result-object v6

    iget-object v0, p0, Ldlc;->f:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, p0, Ldlc;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Ldlc;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldli;

    new-instance v0, Ldlb;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ldlb;-><init>(Ljuh;Lkaq;Lkbc;Lj$/time/Clock;Lj$/time/Duration;Ljava/util/concurrent/ScheduledExecutorService;Ldli;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldlc;->a()Ldlb;

    move-result-object v0

    return-object v0
.end method
