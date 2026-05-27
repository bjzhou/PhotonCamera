.class public final Lief;
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

    iput-object p1, p0, Lief;->a:Loiw;

    iput-object p2, p0, Lief;->b:Loiw;

    iput-object p3, p0, Lief;->c:Loiw;

    iput-object p4, p0, Lief;->d:Loiw;

    iput-object p5, p0, Lief;->e:Loiw;

    iput-object p6, p0, Lief;->f:Loiw;

    iput-object p7, p0, Lief;->g:Loiw;

    iput-object p8, p0, Lief;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Liee;
    .locals 13

    iget-object v0, p0, Lief;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljuh;

    iget-object v0, p0, Lief;->b:Loiw;

    check-cast v0, Lelp;

    invoke-virtual {v0}, Lelp;->a()Landroid/view/Window;

    move-result-object v3

    iget-object v0, p0, Lief;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Leoa;

    iget-object v0, p0, Lief;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljew;

    iget-object v0, p0, Lief;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lief;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lchs;

    iget-object v0, p0, Lief;->g:Loiw;

    check-cast v0, Lels;

    invoke-virtual {v0}, Lels;->a()Landroid/content/Intent;

    move-result-object v8

    iget-object v0, p0, Lief;->h:Loiw;

    check-cast v0, Lemg;

    invoke-virtual {v0}, Lemg;->a()Landroid/os/PowerManager;

    move-result-object v9

    new-instance v0, Liee;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Liee;-><init>(Ljuh;Landroid/view/Window;Leoa;Ljew;Ljava/util/concurrent/ScheduledExecutorService;Lchs;Landroid/content/Intent;Landroid/os/PowerManager;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lief;->a()Liee;

    move-result-object v0

    return-object v0
.end method
