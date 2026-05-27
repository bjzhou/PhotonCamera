.class public final enum Lmqk;
.super Ljava/lang/Enum;

# interfaces
.implements Lmqi;


# static fields
.field public static final enum a:Lmqk;

.field private static final synthetic b:[Lmqk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmqk;

    invoke-direct {v0}, Lmqk;-><init>()V

    sput-object v0, Lmqk;->a:Lmqk;

    const/4 v1, 0x1

    new-array v1, v1, [Lmqk;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lmqk;->b:[Lmqk;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lmqk;
    .locals 1

    sget-object v0, Lmqk;->b:[Lmqk;

    invoke-virtual {v0}, [Lmqk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmqk;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.identity()"

    return-object v0
.end method
