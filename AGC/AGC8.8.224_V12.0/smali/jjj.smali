.class public final Ljjj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljtu;

.field public static final b:Ljtu;

.field public static final c:Ljtu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gms:feedback_client:enable_new_send_silent_feedback"

    invoke-static {v0}, Ljtu;->c(Ljava/lang/String;)Ljtu;

    move-result-object v0

    sput-object v0, Ljjj;->a:Ljtu;

    const-string v0, "gms:feedback_client:enable_new_session_id_format"

    invoke-static {v0}, Ljtu;->c(Ljava/lang/String;)Ljtu;

    const v0, 0x19000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljtt;

    invoke-direct {v1, v0}, Ljtt;-><init>(Ljava/lang/Integer;)V

    sput-object v1, Ljjj;->b:Ljtu;

    const-string v0, "gms:feedback_client:enable_max_allowed_binder_size_check"

    invoke-static {v0}, Ljtu;->c(Ljava/lang/String;)Ljtu;

    move-result-object v0

    sput-object v0, Ljjj;->c:Ljtu;

    return-void
.end method
