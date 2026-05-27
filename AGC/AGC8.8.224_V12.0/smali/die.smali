.class public final Ldie;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.use_smarts_api"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldie;->a:Ldhj;

    return-void
.end method
