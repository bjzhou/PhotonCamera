.class public final enum Lj$/time/format/FormatStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


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

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lj$/time/format/FormatStyle;

    const-string v5, "FULL"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/time/format/FormatStyle;->FULL:Lj$/time/format/FormatStyle;

    new-instance v5, Lj$/time/format/FormatStyle;

    const-string v6, "LONG"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/format/FormatStyle;->LONG:Lj$/time/format/FormatStyle;

    new-instance v6, Lj$/time/format/FormatStyle;

    const-string v7, "MEDIUM"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    new-instance v7, Lj$/time/format/FormatStyle;

    const-string v8, "SHORT"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    const/4 v8, 0x4

    new-array v8, v8, [Lj$/time/format/FormatStyle;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Lj$/time/format/FormatStyle;->a:[Lj$/time/format/FormatStyle;

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
