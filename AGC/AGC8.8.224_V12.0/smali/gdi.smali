.class public final Lgdi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Byte;

.field public static final b:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lgdi;->a:Ljava/lang/Byte;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lgdi;->b:Ljava/lang/Byte;

    return-void
.end method
