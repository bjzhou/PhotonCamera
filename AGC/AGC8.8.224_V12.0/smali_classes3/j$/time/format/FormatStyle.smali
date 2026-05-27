.class public final enum Lj$/time/format/FormatStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/format/FormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL:Lj$/time/format/FormatStyle;

.field public static final enum LONG:Lj$/time/format/FormatStyle;

.field public static final enum MEDIUM:Lj$/time/format/FormatStyle;

.field public static final enum SHORT:Lj$/time/format/FormatStyle;

.field private static final synthetic a:[Lj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lj$/time/format/FormatStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/FormatStyle;->FULL:Lj$/time/format/FormatStyle;

    new-instance v1, Lj$/time/format/FormatStyle;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/format/FormatStyle;->LONG:Lj$/time/format/FormatStyle;

    new-instance v3, Lj$/time/format/FormatStyle;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    new-instance v5, Lj$/time/format/FormatStyle;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    const/4 v7, 0x4

    new-array v7, v7, [Lj$/time/format/FormatStyle;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj$/time/format/FormatStyle;->a:[Lj$/time/format/FormatStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/FormatStyle;
    .locals 1

    const-class v0, Lj$/time/format/FormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/FormatStyle;

    return-object p0
.end method

.method public static values()[Lj$/time/format/FormatStyle;
    .locals 1

    sget-object v0, Lj$/time/format/FormatStyle;->a:[Lj$/time/format/FormatStyle;

    invoke-virtual {v0}, [Lj$/time/format/FormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/FormatStyle;

    return-object v0
.end method
