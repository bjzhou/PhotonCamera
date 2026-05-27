.class public final Lewn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lewm;

.field private static final b:Lnak;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com/google/android/apps/camera/legacy/lightcycle/panorama/DeviceManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lewn;->b:Lnak;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lewn;->c:Ljava/util/Map;

    new-instance v1, Lewm;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lewm;-><init>(FZ)V

    const-string v4, "LGE"

    const-string v5, "hammerhead"

    invoke-static {v4, v5, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v2, v3}, Lewm;-><init>(FZ)V

    const-string v5, "g3"

    invoke-static {v4, v5, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v2, v3}, Lewm;-><init>(FZ)V

    const-string v5, "b1"

    invoke-static {v4, v5, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v2, v3}, Lewm;-><init>(FZ)V

    const-string v3, "b1w"

    invoke-static {v4, v3, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    const v3, 0x4262c28f    # 56.69f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v5, "HTC"

    const-string v6, "m7"

    invoke-static {v5, v6, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v6, "m7cdtu"

    invoke-static {v5, v6, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v6, "m7cdug"

    invoke-static {v5, v6, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v6, "m7cdwg"

    invoke-static {v5, v6, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v6, "m7wls"

    invoke-static {v5, v6, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v3, "m7wlv"

    invoke-static {v5, v3, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    const/high16 v3, 0x42540000    # 53.0f

    invoke-direct {v1, v3, v4}, Lewm;-><init>(FZ)V

    const-string v3, "motorola"

    const-string v5, "ghost"

    invoke-static {v3, v5, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    new-instance v1, Lewm;

    invoke-direct {v1, v2, v4}, Lewm;-><init>(FZ)V

    const-string v2, "Default"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lewn;->c(Ljava/lang/String;Ljava/lang/String;Lewm;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brand : \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Manufacturer : \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Device : \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Model : \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Hardware : \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lewm;

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lewm;

    :cond_0
    sput-object v1, Lewn;->a:Lewm;

    return-void
.end method

.method public static a(F)F
    .locals 3

    sget-object v0, Lewn;->a:Lewm;

    iget v0, v0, Lewm;->a:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x43200000    # 160.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    sget-object v0, Lewn;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "Reported FOV is larger than the maximum allowed at : %g"

    const/16 v2, 0x7e5

    invoke-static {v0, v1, p0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/high16 p0, 0x425c0000    # 55.0f

    :cond_1
    return p0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lewm;)V
    .locals 1

    sget-object v0, Lewn;->c:Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
