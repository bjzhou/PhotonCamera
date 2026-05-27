.class final Lbdd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbdd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    sput-object v0, Lbdd;->a:Lbdd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
