.class public Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;
.super Lhkh;


# instance fields
.field public final a:Lkbc;

.field public b:Lkbf;


# direct methods
.method public constructor <init>(Lkrf;Lkbc;)V
    .locals 1

    invoke-static {}, Lhka;->values()[Lhka;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    sget-object p1, Lkbf;->b:Lkbf;

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->b:Lkbf;

    iput-object p2, p0, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lkbc;

    return-void
.end method


# virtual methods
.method public getOneCameraCreateNs()J
    .locals 2

    sget-object v0, Lhka;->b:Lhka;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOneCameraCreatedNs()J
    .locals 2

    sget-object v0, Lhka;->c:Lhka;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method
