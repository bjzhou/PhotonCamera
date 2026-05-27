.class public final Leca;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Loiw;

.field public final c:Ldhi;

.field public final d:Lkbc;

.field public final e:Lmqp;

.field public final f:Lmqp;

.field private final g:Lnou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/HdrPlusPrewarmBehavior"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leca;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Loiw;Ldhi;Lkbc;Lmqp;Lmqp;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leca;->b:Loiw;

    iput-object p2, p0, Leca;->c:Ldhi;

    iput-object p3, p0, Leca;->d:Lkbc;

    iput-object p4, p0, Leca;->e:Lmqp;

    iput-object p5, p0, Leca;->f:Lmqp;

    iput-object p6, p0, Leca;->g:Lnou;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leca;->g:Lnou;

    new-instance v1, Lcig;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Leca;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method
