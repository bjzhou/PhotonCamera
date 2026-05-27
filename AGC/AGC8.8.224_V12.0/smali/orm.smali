.class public final Lorm;
.super Lokp;

# interfaces
.implements Lora;


# static fields
.field public static final a:Lorm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorm;

    invoke-direct {v0}, Lorm;-><init>()V

    sput-object v0, Lorm;->a:Lorm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lora;->c:Lokv;

    invoke-direct {p0, v0}, Lokp;-><init>(Loky;)V

    return-void
.end method


# virtual methods
.method public final dg(ZZLomk;)Loqh;
    .locals 0

    sget-object p1, Lorn;->a:Lorn;

    return-object p1
.end method

.method public final dh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Ljava/util/concurrent/CancellationException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Lopg;)Lope;
    .locals 0

    sget-object p1, Lorn;->a:Lorn;

    return-object p1
.end method

.method public final r(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonCancellable"

    return-object v0
.end method

.method public final u()V
    .locals 0

    return-void
.end method
