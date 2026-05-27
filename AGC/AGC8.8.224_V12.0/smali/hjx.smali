.class public final enum Lhjx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhjx;

.field private static final synthetic b:[Lhjx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhjx;

    invoke-direct {v0}, Lhjx;-><init>()V

    sput-object v0, Lhjx;->a:Lhjx;

    const/4 v1, 0x1

    new-array v1, v1, [Lhjx;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lhjx;->b:[Lhjx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "MODE_SWITCH_END"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhjx;
    .locals 1

    sget-object v0, Lhjx;->b:[Lhjx;

    invoke-virtual {v0}, [Lhjx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhjx;

    return-object v0
.end method
