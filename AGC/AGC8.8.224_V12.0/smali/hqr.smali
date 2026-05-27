.class public final Lhqr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgqp;Ljava/util/concurrent/Executor;Lgqt;Lfcd;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lhqr;->d:Ljava/lang/Object;

    iput-object p3, p0, Lhqr;->e:Ljava/lang/Object;

    iput-object p4, p0, Lhqr;->b:Ljava/lang/Object;

    iput-object p5, p0, Lhqr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhrz;Landroid/content/Context;Landroid/util/DisplayMetrics;Lkog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhqr;->f:Ljava/lang/Object;

    iput-object p1, p0, Lhqr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhqr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lhqr;->c:Ljava/lang/Object;

    iput-object p4, p0, Lhqr;->d:Ljava/lang/Object;

    new-instance p1, Lbgj;

    invoke-direct {p1}, Lbgj;-><init>()V

    iput-object p1, p0, Lhqr;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lhqr;->a:Ljava/lang/Object;

    check-cast v0, Lhrz;

    invoke-virtual {v0}, Lhrz;->g()V

    iget-object v0, p0, Lhqr;->e:Ljava/lang/Object;

    check-cast v0, Lbgj;

    invoke-virtual {v0}, Lbgj;->g()V

    return-void
.end method
