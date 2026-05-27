.class public final Losn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;

.field public static final b:Loxb;

.field public static final c:Loxb;

.field public static final d:Loxb;

.field public static final e:Loxb;

.field public static final f:Loxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->a:Loxb;

    new-instance v0, Loxb;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->b:Loxb;

    new-instance v0, Loxb;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->c:Loxb;

    new-instance v0, Loxb;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->d:Loxb;

    new-instance v0, Loxb;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->e:Loxb;

    new-instance v0, Loxb;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Losn;->f:Loxb;

    return-void
.end method
