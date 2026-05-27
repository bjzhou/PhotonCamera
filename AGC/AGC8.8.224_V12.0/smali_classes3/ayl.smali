.class public final Layl;
.super Laqc;


# static fields
.field public static final c:Layl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Layl;

    invoke-direct {v0}, Layl;-><init>()V

    sput-object v0, Layl;->c:Layl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Laqc;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Laqp;)V
    .locals 1

    const-string v0, "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    "

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    return-void
.end method
