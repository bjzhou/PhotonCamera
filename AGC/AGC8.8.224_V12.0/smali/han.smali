.class public final Lhan;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkaf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkaf;

    const/16 v1, 0xcc0

    const/16 v2, 0x72c

    invoke-direct {v0, v1, v2}, Lkaf;-><init>(II)V

    sput-object v0, Lhan;->a:Lkaf;

    new-instance v0, Lkaf;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lkaf;-><init>(II)V

    new-instance v0, Lkaf;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkaf;-><init>(II)V

    return-void
.end method
