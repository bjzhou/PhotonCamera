.class public final Lkwq;
.super Lkws;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkws;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkwq;->b:J

    iput-wide v0, p0, Lkwq;->a:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dalvikHeapAllocatedB: 0, dalvikHeapSizeB: 0, dalvikMaxHeapSizeB: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeHeapAllocatedB: 0, otherPrivateDirtyB: 0, otherPssB: 0, dalvikPrivateDirtyB: 0, dalvikPssB: 0, totalPssB: 0, javaPrivateDirtyB: 0, nativePrivateDirtyB: 0, otherPrivateCodeB: 0, otherPrivateGraphicsB: 0, otherPrivateStackB: 0, otherPrivateB: 0, systemB: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
