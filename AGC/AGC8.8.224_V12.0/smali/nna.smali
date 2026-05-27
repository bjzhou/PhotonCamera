.class final Lnna;
.super Ljava/lang/Object;


# static fields
.field static final a:Lnna;


# instance fields
.field volatile next:Lnna;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnna;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnna;-><init>([B)V

    sput-object v0, Lnna;->a:Lnna;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnnb;->e:Lnmm;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lnmm;->d(Lnna;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lnna;)V
    .locals 1

    sget-object v0, Lnnb;->e:Lnmm;

    invoke-virtual {v0, p0, p1}, Lnmm;->c(Lnna;Lnna;)V

    return-void
.end method
