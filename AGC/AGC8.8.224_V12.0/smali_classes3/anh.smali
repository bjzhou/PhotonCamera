.class public final Lanh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroidx/preference/DropDownPreference;I)V
    .locals 0

    iput p2, p0, Lanh;->b:I

    iput-object p1, p0, Lanh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llg;I)V
    .locals 0

    iput p2, p0, Lanh;->b:I

    iput-object p1, p0, Lanh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p1, p0, Lanh;->b:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lanh;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p1, p1, Llg;->e:Lkm;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lkm;->a:Z

    return-void

    :pswitch_0
    if-ltz p3, :cond_0

    iget-object p1, p0, Lanh;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/ListPreference;

    iget-object p1, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lanh;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/preference/ListPreference;

    iget-object p2, p2, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lanh;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->W(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lanh;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->o(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget p1, p0, Lanh;->b:I

    return-void
.end method
