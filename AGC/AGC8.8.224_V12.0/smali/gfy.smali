.class public final Lgfy;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;
.implements Lfaz;
.implements Lfaa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lezy;

.field public final c:Lchs;

.field public final d:Ljuh;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lkbc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkbc;Lezy;Lchs;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfy;->a:Landroid/content/Context;

    iput-object p2, p0, Lgfy;->e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lgfy;->f:Lkbc;

    iput-object p4, p0, Lgfy;->b:Lezy;

    iput-object p5, p0, Lgfy;->c:Lchs;

    iput-object p6, p0, Lgfy;->d:Ljuh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lgfy;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgfy;->f:Lkbc;

    new-instance v2, Lfzr;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lfzr;-><init>(Lgfy;I)V

    const-string v3, "PhenotypeHelper#commitFlags"

    invoke-interface {v1, v3, v2}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lgfy;->a()V

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lgfy;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgfy;->f:Lkbc;

    new-instance v2, Lfzr;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lfzr;-><init>(Lgfy;I)V

    const-string v3, "PhenotypeHelper#retrieveFlags"

    invoke-interface {v1, v3, v2}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
