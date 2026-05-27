.class public final Lfrt;
.super Ljava/lang/Object;

# interfaces
.implements Lfqq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Liac;Lcom/google/googlex/gcam/YuvWriteView;Lkpb;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 2

    new-instance p3, Leej;

    iget-object p1, p1, Liac;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p3, p2, v0, v1}, Leej;-><init>(Lcom/google/googlex/gcam/YuvWriteView;J)V

    return-object p3
.end method

.method public final b(Liac;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 2

    new-instance p3, Lkmt;

    iget-object p1, p1, Liac;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p3, p2, v0, v1}, Lkmt;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object p3
.end method
