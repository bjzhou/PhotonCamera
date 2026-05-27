.class public final Lboe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lboc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lboc;

    const-string v1, "SysProps"

    invoke-direct {v0, v1}, Lboc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lboe;->a:Lboc;

    return-void
.end method
