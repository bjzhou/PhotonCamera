.class public final Lhjz;
.super Lhkh;


# instance fields
.field public a:Lkbf;


# direct methods
.method public constructor <init>(Lkrf;Lkbc;)V
    .locals 1

    invoke-static {}, Lhjy;->values()[Lhjy;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    const-string p1, "ModeSwitch"

    invoke-interface {p2, p1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Lhjz;->a:Lkbf;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    sget-object v0, Lhjy;->b:Lhjy;

    invoke-virtual {p0, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    return-void
.end method
