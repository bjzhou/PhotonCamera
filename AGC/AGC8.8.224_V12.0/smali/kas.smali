.class public final Lkas;
.super Ljava/util/logging/Handler;


# static fields
.field public static final a:Lkas;


# instance fields
.field private final b:Ljuh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    sput-object v0, Lkas;->a:Lkas;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    sget-object v0, Ljuh;->b:Ljuh;

    iput-object v0, p0, Lkas;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkas;->b:Ljuh;

    new-instance v2, Ljoq;

    const/16 v3, 0x12

    invoke-direct {v2, p1, v0, v3}, Ljoq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
