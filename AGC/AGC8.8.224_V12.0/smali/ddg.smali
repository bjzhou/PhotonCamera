.class public final Lddg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lkaq;


# direct methods
.method public constructor <init>(Lkaq;Ldhi;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lddg;->a:Ljava/util/concurrent/Executor;

    const-string p3, "SQLiteExpnCatchr"

    invoke-interface {p1, p3}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lddg;->b:Lkaq;

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p2}, Ldhi;->f()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lddg;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Layo;

    iget-object v2, p0, Lddg;->b:Lkaq;

    const/4 v3, 0x3

    invoke-direct {v1, v2, p1, v3}, Layo;-><init>(Lkaq;Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
