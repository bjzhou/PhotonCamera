.class public final Lfvm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lftp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lftp;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lftp;-><init>(I)V

    sput-object v0, Lfvm;->a:Lftp;

    return-void
.end method
