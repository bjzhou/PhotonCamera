.class final Lovm;
.super Ljava/lang/Object;

# interfaces
.implements Loku;


# static fields
.field public static final a:Lovm;

.field private static final b:Lola;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lovm;

    invoke-direct {v0}, Lovm;-><init>()V

    sput-object v0, Lovm;->a:Lovm;

    sget-object v0, Lolb;->a:Lolb;

    sput-object v0, Lovm;->b:Lola;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lola;
    .locals 1

    sget-object v0, Lovm;->b:Lola;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
