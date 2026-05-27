.class public final enum Lhjw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhjw;

.field private static final synthetic b:[Lhjw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhjw;

    invoke-direct {v0}, Lhjw;-><init>()V

    sput-object v0, Lhjw;->a:Lhjw;

    const/4 v1, 0x1

    new-array v1, v1, [Lhjw;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lhjw;->b:[Lhjw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "CAMERA_CHANGE_END"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhjw;
    .locals 1

    sget-object v0, Lhjw;->b:[Lhjw;

    invoke-virtual {v0}, [Lhjw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhjw;

    return-object v0
.end method
