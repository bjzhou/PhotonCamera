.class public final Lul;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loon;

.field public static final b:Loon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->i(I)Loon;

    move-result-object v1

    sput-object v1, Lul;->a:Loon;

    invoke-static {v0}, Lolp;->i(I)Loon;

    move-result-object v0

    sput-object v0, Lul;->b:Loon;

    return-void
.end method
