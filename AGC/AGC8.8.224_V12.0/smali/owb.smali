.class final Lowb;
.super Lowg;


# static fields
.field public static final a:Lowb;

.field private static final b:Lowa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lowb;

    invoke-direct {v0}, Lowb;-><init>()V

    sput-object v0, Lowb;->a:Lowb;

    new-instance v0, Lowa;

    invoke-direct {v0}, Lowa;-><init>()V

    sput-object v0, Lowb;->b:Lowa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lowg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lomk;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lowb;->b:Lowa;

    invoke-virtual {v0, p1}, Lowa;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lomk;

    return-object p1
.end method
