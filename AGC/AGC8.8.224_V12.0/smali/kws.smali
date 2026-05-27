.class public Lkws;
.super Ljava/lang/Object;


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkws;->c:J

    iput-wide v0, p0, Lkws;->d:J

    iput-wide v0, p0, Lkws;->e:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "dalvikHeapAllocatedB: 0, dalvikHeapSizeB: 0, dalvikMaxHeapSizeB: 0"

    return-object v0
.end method
