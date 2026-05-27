.class public final Lcln;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lmrg;

.field public final b:Lmrq;

.field public final c:Ljava/util/Map;

.field public d:J

.field public e:J

.field public f:I

.field public final g:Lcvr;


# direct methods
.method public constructor <init>(Lcvr;Lmrq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcln;->c:Ljava/util/Map;

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcln;->d:J

    iput-wide p3, p0, Lcln;->e:J

    const/4 p3, 0x0

    iput p3, p0, Lcln;->f:I

    iput-object p1, p0, Lcln;->g:Lcvr;

    iput-object p2, p0, Lcln;->b:Lmrq;

    invoke-static {p2}, Lmrg;->c(Lmrq;)Lmrg;

    move-result-object p1

    iput-object p1, p0, Lcln;->a:Lmrg;

    return-void
.end method
