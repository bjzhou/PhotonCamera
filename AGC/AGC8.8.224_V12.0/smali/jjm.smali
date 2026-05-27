.class public final Ljjm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljfc;

.field public static final b:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljjl;

    invoke-direct {v0}, Ljjl;-><init>()V

    sput-object v0, Ljjm;->a:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "Help.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljjm;->b:Ligo;

    return-void
.end method
