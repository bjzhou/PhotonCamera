.class final Llyn;
.super Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Laqa;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "\n      UPDATE ResourceEntity SET status_uploadState = ?\n      WHERE \n        onDeviceId = ?\n    "

    return-object v0
.end method
