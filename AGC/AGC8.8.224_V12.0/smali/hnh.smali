.class public final enum Lhnh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhnh;

.field public static final enum b:Lhnh;

.field private static final synthetic c:[Lhnh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhnh;

    const-string v1, "FIRST_PREVIEW_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhnh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhnh;->a:Lhnh;

    new-instance v1, Lhnh;

    const-string v3, "SHUTTER_BUTTON_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhnh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhnh;->b:Lhnh;

    const/4 v3, 0x2

    new-array v3, v3, [Lhnh;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lhnh;->c:[Lhnh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhnh;
    .locals 1

    sget-object v0, Lhnh;->c:[Lhnh;

    invoke-virtual {v0}, [Lhnh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhnh;

    return-object v0
.end method
