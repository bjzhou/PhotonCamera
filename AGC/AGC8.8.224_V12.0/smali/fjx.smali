.class public final Lfjx;
.super Ljava/lang/Object;


# instance fields
.field private final a:Leah;


# direct methods
.method public constructor <init>(Leah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjx;->a:Leah;

    return-void
.end method


# virtual methods
.method public final a(Lgrw;Lgrw;)F
    .locals 1

    iget-object v0, p0, Lfjx;->a:Leah;

    invoke-virtual {v0}, Leah;->d()V

    iget-object v0, p0, Lfjx;->a:Leah;

    invoke-virtual {v0, p1, p2}, Leah;->a(Lgrw;Lgrw;)F

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "GyroFrameDistanceMetric"

    return-object v0
.end method
